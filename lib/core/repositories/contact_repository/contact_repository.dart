import 'package:contacts/core/models/contact_list/addContact_response.dart';

abstract class ContactRepository {
  Future<List<AddContactResponse>> fetchContactsList();
}
