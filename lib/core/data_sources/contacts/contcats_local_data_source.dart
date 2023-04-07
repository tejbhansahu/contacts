import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/core/models/contact_list/addContact_response_hive.dart';
import 'package:hive/hive.dart';
import 'package:contacts/core/constant/local_storage_keys.dart';
import 'package:contacts/core/exceptions/cache_exception.dart';
import 'package:contacts/core/utils/file_helper.dart';
import 'package:contacts/locator.dart';

abstract class ContactsLocalDataSource {
  Future<void> init();

  Future<List<AddContactResponse>> fetchContacts();

  Future<void> cacheContacts(List<AddContactResponse> contactList);

  Future<void> updateContacts(AddContactResponse contact);

  Future<void> bookmarkedContact({required dynamic key, required bool status});

  Future<void> removeContact({required dynamic key});

  Future<AddContactResponse> getContactByID(dynamic key);
}

class ContactsLocalDataSourceImpl implements ContactsLocalDataSource {
  final FileHelper _fileHelper = locator<FileHelper>();
  final HiveInterface _hiveService = locator<HiveInterface>();

  bool get _isBoxOpen => _hiveService.isBoxOpen(LocalStorageKeys.contactsList);

  Box<ContactsListHive> get _contactsBox =>
      _hiveService.box<ContactsListHive>(LocalStorageKeys.contactsList);

  @override
  Future<void> init() async {
    final path = await _fileHelper.getApplicationDocumentsDirectoryPath();
    _hiveService.init(path);
    _hiveService.registerAdapter<ContactsListHive>(ContactsListHiveAdapter());
    if (!_isBoxOpen) {
      await _hiveService
          .openBox<ContactsListHive>(LocalStorageKeys.contactsList);
    }
  }

  @override
  Future<List<AddContactResponse>> fetchContacts() async {
    if (!_isBoxOpen) {
      await _hiveService
          .openBox<ContactsListHive>(LocalStorageKeys.contactsList);
    }
    if (_contactsBox.isEmpty) {
      throw const CacheException('No list found in cache');
    }
    return _contactsBox.values
        .map<AddContactResponse>((contactsListHive) =>
            AddContactResponse.fromJson(contactsListHive.toMap()))
        .toList();
  }

  @override
  Future<void> cacheContacts(List<AddContactResponse> contactList) async {
    final contactsMap = <String, ContactsListHive>{};
    for (var contact in contactList) {
      contactsMap.addAll(
          {contact.id!.toString(): ContactsListHive.fromModel(contact)});
    }
    await _contactsBox.putAll(contactsMap);
  }

  @override
  Future<void> updateContacts(AddContactResponse contact) async {
    ContactsListHive? value = _contactsBox.get(contact.id!);

    value!.first_name = contact.firstName;
    value.last_name = contact.lastName;
    value.contact = contact.contact;
    value.date = contact.date;
    value.email = contact.email;
    value.company = contact.company;
    value.tag = contact.tag;
    value.contact_type = contact.contactType;
    value.date_type = contact.dateType;
    value.email_type = contact.emailType;
    value.isFavourite = contact.isFavourite;
    value.profile_slug = contact.profileSlug;

    _contactsBox.put(contact.id, value);
  }

  @override
  Future<AddContactResponse> getContactByID(key) async {
    final contact = _contactsBox.get(key);
    return AddContactResponse.fromJson(contact!.toMap());
  }

  @override
  Future<void> bookmarkedContact({required key, required bool status}) async {
    ContactsListHive? value = _contactsBox.get(key);
    value!.isFavourite = !status;
    _contactsBox.put(key, value);
  }

  @override
  Future<void> removeContact({required key}) async {
    _contactsBox.delete(key);
  }
}
