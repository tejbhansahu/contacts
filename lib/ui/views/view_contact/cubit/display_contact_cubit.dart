import 'package:bloc/bloc.dart';
import 'package:contacts/core/data_sources/contacts/contcats_local_data_source.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'display_contact_state.dart';

part 'display_contact_cubit.freezed.dart';

class DisplayContactCubit extends Cubit<DisplayContactState> {
  final ContactsLocalDataSource? localDataSource =
      locator<ContactsLocalDataSource>();

  DisplayContactCubit() : super(DisplayContactState.initial());

  Future<void> getContact() async {
    final contact = await localDataSource!.getContactByID(state.key);
    emit(state.copyWith(contact: contact));
  }

  Future<void> bookMarkedContact(
      {required dynamic key, required bool value}) async {
    localDataSource!.bookmarkedContact(key: key, status: value);
  }

  Future<void> removeContact({required dynamic key}) async {
    localDataSource!.removeContact(key: key);
  }

  void setKey(dynamic key) {
    dynamic newValue = key;
    emit(state.copyWith(key: newValue));
  }
}
