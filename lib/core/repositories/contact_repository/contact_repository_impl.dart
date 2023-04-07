import 'package:contacts/core/data_sources/contacts/contacts_remote_data_source.dart';
import 'package:contacts/core/data_sources/contacts/contcats_local_data_source.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/core/repositories/contact_repository/contact_repository.dart';
import 'package:logging/logging.dart';
import 'package:contacts/core/exceptions/cache_exception.dart';
import 'package:contacts/core/exceptions/network_exception.dart';
import 'package:contacts/core/exceptions/repository_exception.dart';
import 'package:contacts/core/services/connectivity/connectivity_service.dart';
import 'package:contacts/locator.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactsRemoteDataSource? remoteDataSource =
      locator<ContactsRemoteDataSource>();
  final ContactsLocalDataSource? localDataSource =
      locator<ContactsLocalDataSource>();
  final ConnectivityService? connectivityService =
      locator<ConnectivityService>();

  final _log = Logger('ContactRepositoryImpl');

  @override
  Future<List<AddContactResponse>> fetchContactsList() async {
    try {
      if (await connectivityService!.isConnected) {
        // final contactList = await remoteDataSource!.fetchContacts();
        final contactList = await localDataSource!.fetchContacts();
        // await localDataSource!.cacheContacts(contactList);
        return contactList;
      } else {
        final contactList = await localDataSource!.fetchContacts();
        return contactList;
      }
    } on NetworkException catch (e) {
      _log.severe('Failed to fetch list remotely');
      throw RepositoryException(e.message);
    } on CacheException catch (e) {
      _log.severe('Failed to fetch list locally');
      throw RepositoryException(e.message);
    }
  }
}
