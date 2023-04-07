import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/constant/styles.dart';
import 'package:contacts/core/models/alert_request/confirm_alert_request.dart';
import 'package:contacts/core/navigation/navigation.dart';
import 'package:contacts/ui/views/navigation_bar/contacts/cubit/view_contact_cubit.dart';
import 'package:contacts/ui/views/view_contact/cubit/display_contact_cubit.dart';
import 'package:contacts/ui/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewContact extends StatefulWidget {
  const ViewContact({Key? key, required this.contactKey}) : super(key: key);

  final dynamic contactKey;

  @override
  State<ViewContact> createState() => _ViewContactState();
}

class _ViewContactState extends State<ViewContact> {
  @override
  void initState() {
    context.read<DisplayContactCubit>().setKey(widget.contactKey);
    context.read<DisplayContactCubit>().getContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayContactCubit, DisplayContactState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appBar(state),
          body: ListView(
            padding: const EdgeInsets.only(top: 40.0),
            children: [
              profilePicture(state.contact.firstName ?? ''),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                      "${state.contact.firstName} ${state.contact.lastName}",
                      style: Styles.tsBlackRegular24),
                ),
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () => Navigate.callUi(
                              context: context,
                              name: state.contact.firstName ?? '',
                              contact: state.contact.contact ?? ''),
                          icon: const Icon(Icons.call_outlined)),
                      Text('Call',
                          style: Styles.tsGreyRegular14.copyWith(
                              fontSize: 16,
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.message_outlined)),
                      Text('Text',
                          style: Styles.tsGreyRegular14.copyWith(
                              fontSize: 16,
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.videocam_outlined)),
                      Text('Set up',
                          style: Styles.tsGreyRegular14.copyWith(
                              fontSize: 16,
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
              const Divider(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(25.0))),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Text('Contact info',
                        style: Styles.tsGreyRegular14.copyWith(
                            fontSize: 16,
                            color: AppColors.backgroundColor,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20.0),
                    labelWidget(
                        leadingIcon: Icons.call_outlined,
                        title: state.contact.contact ?? '',
                        trailingIcon: Icons.message_outlined,
                        subTitle: state.contact.contactType ?? ''),
                    labelWidget(
                        leadingIcon: Icons.email_outlined,
                        title: state.contact.email ?? '',
                        subTitle: state.contact.emailType ?? ''),
                    labelWidget(
                        leadingIcon: Icons.calendar_today,
                        title: state.contact.date ?? '',
                        trailingIcon: Icons.edit_calendar,
                        subTitle: state.contact.dateType ?? '')
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget labelWidget(
      {required IconData leadingIcon,
      required String title,
      IconData? trailingIcon,
      required String subTitle}) {
    return Visibility(
      visible: title.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(leadingIcon, color: AppColors.backgroundColor),
            const SizedBox(width: 15.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subTitle),
              ],
            ),
            const Spacer(),
            Visibility(
                visible: trailingIcon != null,
                child: IconButton(onPressed: () {}, icon: Icon(trailingIcon)))
          ],
        ),
      ),
    );
  }

  AppBar appBar(DisplayContactState state) {
    return AppBar(
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back)),
      title: Text(state.contact.firstName ?? ''),
      actions: [
        IconButton(
            onPressed: () => Navigate.addNewContact(
                context: context,
                addContact: false,
                contact: state.contact,
                callback: (dynamic value) {
                  if (value != null && value) {
                    context.read<DisplayContactCubit>().getContact();
                  }
                }),
            icon: const Icon(Icons.edit)),
        IconButton(
            onPressed: () {
              context.read<DisplayContactCubit>().bookMarkedContact(
                  key: state.contact.id,
                  value: state.contact.isFavourite ?? false);
              context.read<DisplayContactCubit>().getContact();
            },
            icon: Icon(state.contact.isFavourite ?? false
                ? Icons.star
                : Icons.star_border_outlined)),
        IconButton(
            onPressed: () {
              showConfirmAlert(
                  context: context,
                  request: ConfirmAlertRequest((r) => r
                    ..title = "Are you sure you want to delete?"
                    ..buttonTitle = "OK"),
                  onConfirmed: () {
                    context
                        .read<DisplayContactCubit>()
                        .removeContact(key: state.contact.id);
                    context.read<ViewContactCubit>().fetchContactList();
                  });
            },
            icon: const Icon(Icons.delete))
      ],
    );
  }

  Widget profilePicture(String firstName) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          height: 100.0,
          width: 100.0,
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondaryContainer),
          child: Center(
              child: Text(
                  firstName.isNotEmpty ? firstName[0].toUpperCase() : '',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary))),
        ));
  }
}
