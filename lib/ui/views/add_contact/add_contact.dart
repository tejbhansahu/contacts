import 'dart:math';
import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/constant/styles.dart';
import 'package:contacts/core/models/alert_request/confirm_alert_request.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/ui/widgets/custom_dialog.dart';
import 'package:contacts/core/utils/custom_snackbar.dart';
import 'package:contacts/ui/views/add_contact/cubit/add_contact_cubit.dart';
import 'package:contacts/ui/views/navigation_bar/contacts/cubit/view_contact_cubit.dart';
import 'package:contacts/ui/widgets/custom_dropdown.dart';
import 'package:contacts/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key, required this.addContact, this.contact})
      : super(key: key);

  final bool addContact;
  final AddContactResponse? contact;

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    preLoadData();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    companyNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    dateController.dispose();
    super.dispose();
  }

  preLoadData() {
    if (!widget.addContact) {
      final cubit = context.read<AddContactCubit>();
      firstNameController.text = widget.contact?.firstName ?? '';
      lastNameController.text = widget.contact?.lastName ?? '';
      companyNameController.text = widget.contact?.company ?? '';
      phoneController.text = widget.contact?.contact ?? '';
      emailController.text = widget.contact?.email ?? '';
      dateController.text = widget.contact?.date ?? '';
      cubit.setCallLabel(widget.contact?.contactType ?? 'Mobile');
      cubit.setEmailLabel(widget.contact?.emailType ?? 'Home');
      cubit.setEventLabel(widget.contact?.dateType ?? 'Anniversary');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactCubit, AddContactState>(
      builder: (context, state) {
        return Scaffold(
            appBar: appBar(state),
            body: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [profilePicture(state), ...form(state)],
            ));
      },
    );
  }

  AppBar appBar(AddContactState state) {
    return AppBar(
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.clear)),
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(widget.addContact ? "Create contact" : "Edit contact",
          style:
              Styles.tsDarkGreyRegular16.copyWith(fontWeight: FontWeight.bold)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: MaterialButton(
            onPressed: () {
              if (firstNameController.text.isEmpty ||
                  phoneController.text.isEmpty) {
                showConfirmAlert(
                    context: context,
                    request: ConfirmAlertRequest((r) => r
                      ..title = "Add info to save as contact."
                      ..buttonTitle = "OK"),
                    onConfirmed: () => Navigator.of(context).pop());
              } else {
                onSubmit(state);
              }
            },
            color: Theme.of(context).colorScheme.primary,
            elevation: 0,
            hoverElevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: const Text('Save', style: TextStyle(color: AppColors.white)),
          ),
        ),
      ],
    );
  }

  Widget profilePicture(AddContactState state) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          height: 150.0,
          width: 150.0,
          margin: const EdgeInsets.only(bottom: 40.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondaryContainer),
          child: const Icon(Icons.image_outlined, size: 60.0),
        ));
  }

  List<Widget> form(AddContactState state) {
    return [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Icon(Icons.person)),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Enter your first name",
              controller: firstNameController,
              label: 'First Name',
            ),
          ),
        ],
      ),
      const SizedBox(height: 10.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Enter your last name",
              label: 'Last Name',
              controller: lastNameController,
              inputType: TextInputType.name,
            ),
          ),
        ],
      ),
      const SizedBox(height: 20.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Icon(Icons.business)),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Enter company name",
              label: 'Company',
              controller: companyNameController,
              inputType: TextInputType.text,
            ),
          ),
        ],
      ),
      const SizedBox(height: 20.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Icon(Icons.call)),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Enter your number",
              label: 'Phone',
              controller: phoneController,
              inputType: TextInputType.phone,
            ),
          ),
        ],
      ),
      const SizedBox(height: 10.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 5,
            child: CustomDropdown(
                list: state.callList,
                initialValue: state.callLabel,
                onChanged: (String value) =>
                    context.read<AddContactCubit>().setCallLabel(value)),
          ),
          Expanded(flex: 4, child: Container())
        ],
      ),
      const SizedBox(height: 20.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Icon(Icons.email_outlined)),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Enter your email",
              label: 'Email',
              controller: emailController,
              inputType: TextInputType.emailAddress,
            ),
          ),
        ],
      ),
      const SizedBox(height: 10.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 5,
            child: CustomDropdown(
                list: state.emailList,
                initialValue: state.emailLabel,
                onChanged: (String value) {
                  setState(() {
                    // email = value;
                  });
                }),
          ),
          Expanded(flex: 4, child: Container())
        ],
      ),
      const SizedBox(height: 20.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Icon(Icons.calendar_today)),
          Expanded(
            flex: 9,
            child: CustomTextField(
              hintText: "Select Date",
              label: 'Significant Date',
              controller: dateController,
              inputType: TextInputType.datetime,
              isEnabled: false,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  dateController.text = pickedDate.toString();
                } else {}
              },
            ),
          ),
        ],
      ),
      const SizedBox(height: 10.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 5,
            child: CustomDropdown(
                list: state.eventList,
                initialValue: state.eventLabel,
                onChanged: (String value) {}),
          ),
          Expanded(flex: 4, child: Container())
        ],
      )
    ];
  }

  onSubmit(AddContactState state) {
    final contact = AddContactResponse(
        email: emailController.text,
        contact: phoneController.text,
        date: dateController.text,
        isFavourite: widget.addContact ? false : widget.contact!.isFavourite,
        company: companyNameController.text,
        id: widget.addContact
            ? Random().nextInt(100000).toString()
            : widget.contact!.id,
        contactType: state.callLabel,
        dateType: state.eventLabel,
        emailType: state.emailLabel,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        tag: firstNameController.text[0].toUpperCase(),
        profileSlug: widget.addContact ? '' : widget.contact!.profileSlug);

    if (widget.addContact) {
      context
          .read<AddContactCubit>()
          .addContact(contact: contact)
          .then((value) {
        Navigator.pop(context, false);
        context.read<ViewContactCubit>().fetchContactList();
      });
    } else {
      context
          .read<AddContactCubit>()
          .updateContact(contact: contact)
          .then((value) {
        Navigator.pop(context, true);
        context.read<ViewContactCubit>().fetchContactList();
      });
    }

    CustomSnackBar().showSnackBar(
        context: context,
        text: widget.addContact ? 'Contact created' : 'Contact updated',
        function: () => null,
        buttonText: 'OK');
  }
}
