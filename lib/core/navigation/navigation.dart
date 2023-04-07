import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/ui/views/add_contact/add_contact.dart';
import 'package:contacts/ui/views/view_contact/call_ui.dart';
import 'package:contacts/ui/views/view_contact/view_contact.dart';
import 'package:flutter/material.dart';
import 'package:contacts/ui/shared/fade_page_route.dart';

class Navigate {
  static addNewContact(
      {required BuildContext context,
      required bool addContact,
      required Function callback,
      AddContactResponse? contact}) {
    Navigator.push(
            context,
            FadePageRoute(
                fullscreenDialog: true,
                builder: (_) =>
                    AddContact(addContact: addContact, contact: contact)))
        .then((value) => callback(value));
  }

  static viewContact({required BuildContext context, required dynamic key}) {
    Navigator.push(
        context,
        FadePageRoute(
            fullscreenDialog: true,
            builder: (_) => ViewContact(contactKey: key)));
  }

  static callUi(
      {required BuildContext context,
      required String name,
      required String contact}) {
    Navigator.push(
        context,
        FadePageRoute(
            fullscreenDialog: true,
            builder: (_) => CallUi(contact: contact, name: name)));
  }
}
