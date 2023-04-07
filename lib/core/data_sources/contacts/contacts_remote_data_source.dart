import 'package:contacts/core/constant/api_routes.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/core/services/http/http_service.dart';
import 'package:contacts/locator.dart';

abstract class ContactsRemoteDataSource {
  Future<List<AddContactResponse>> fetchContacts();
}

class ContactsRemoteDataSourceImpl implements ContactsRemoteDataSource {
  final HttpService? httpService = locator<HttpService>();

  @override
  Future<List<AddContactResponse>> fetchContacts() async {
    final contactsJsonData =
        await httpService!.getHttp(route: ApiRoutes.getContactsList);
    List<AddContactResponse> rocketsResponse = [];
    return rocketsResponse;
  }
}
