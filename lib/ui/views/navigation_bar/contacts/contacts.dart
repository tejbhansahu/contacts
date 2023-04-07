import 'package:azlistview/azlistview.dart';
import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/core/navigation/navigation.dart';
import 'package:contacts/ui/views/navigation_bar/contacts/cubit/view_contact_cubit.dart';
import 'package:contacts/ui/widgets/contacts_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  void initState() {
    context.read<ViewContactCubit>().fetchContactList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: contactsAppBar(context),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigate.addNewContact(
              context: context, addContact: true, callback: (dynamic) {}),
          child: const Icon(Icons.add)),
      body: BlocBuilder<ViewContactCubit, ViewContactState>(
        builder: (context, state) {
          return AzListView(
            data: state.list,
            itemCount: state.list.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildListItem(state.list[index]);
            },
            physics: const BouncingScrollPhysics(),
            indexBarData: SuspensionUtil.getTagIndexList(state.list),
            indexHintBuilder: (context, hint) {
              return Container(
                alignment: Alignment.center,
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: AppColors.black.withAlpha(200),
                  shape: BoxShape.circle,
                ),
                child: Text(hint,
                    style: const TextStyle(
                        color: AppColors.white, fontSize: 30.0)),
              );
            },
            indexBarMargin: const EdgeInsets.all(10),
            indexBarOptions: IndexBarOptions(
              needRebuild: true,
              decoration:
                  getIndexBarDecoration(AppColors.grey.withOpacity(0.2)),
              downDecoration:
                  getIndexBarDecoration(AppColors.grey.withOpacity(0.4)),
            ),
          );
        },
      ),
    );
  }

  Decoration getIndexBarDecoration(Color color) {
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey[300]!, width: .5));
  }

  Widget _buildListItem(AddContactResponse model) {
    String susTag = model.getSuspensionTag();
    return Column(
      children: <Widget>[
        Offstage(
          offstage: model.isShowSuspension != true,
          child: _buildSusWidget(susTag),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            child: Text(
              model.firstName?[0] ?? '',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          title: Text("${model.firstName} ${model.lastName}"),
          onTap: () => Navigate.viewContact(context: context, key: model.id),
        )
      ],
    );
  }

  Widget _buildSusWidget(String susTag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 40.0,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Text(
            susTag,
            textScaleFactor: 1.2,
          ),
          const Expanded(
              child: Divider(
            height: .0,
            indent: 10.0,
          ))
        ],
      ),
    );
  }
}
