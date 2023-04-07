import 'package:contacts/core/data_sources/contacts/contcats_local_data_source.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/locator.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_contact_state.dart';

part 'add_contact_cubit.freezed.dart';

class AddContactCubit extends Cubit<AddContactState> {
  final ContactsLocalDataSource? localDataSource =
      locator<ContactsLocalDataSource>();

  AddContactCubit() : super(AddContactState.initial());

  void setCallLabel(value) {
    String newValue = value;
    emit(state.copyWith(callLabel: newValue));
  }

  void setEmailLabel(value) {
    String newValue = value;
    emit(state.copyWith(emailLabel: newValue));
  }

  void setEventLabel(value) {
    String newValue = value;
    emit(state.copyWith(eventLabel: newValue));
  }

  Future<void> addContact({required AddContactResponse contact}) async {
    await localDataSource!.cacheContacts([contact]);
  }

  Future<void> updateContact({required AddContactResponse contact}) async {
    await localDataSource!.updateContacts(contact);
  }
}
