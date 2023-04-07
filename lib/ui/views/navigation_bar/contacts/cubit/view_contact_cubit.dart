import 'package:bloc/bloc.dart';
import 'package:contacts/core/models/contact_list/addContact_response.dart';
import 'package:contacts/core/repositories/contact_repository/contact_repository.dart';
import 'package:contacts/locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_contact_state.dart';

part 'view_contact_cubit.freezed.dart';

class ViewContactCubit extends Cubit<ViewContactState> {
  final ContactRepository? contactRepository = locator<ContactRepository>();

  ViewContactCubit() : super(ViewContactState.initial());

  Future<void> fetchContactList() async {
    emit(state.copyWith(isLoading: true));
    final list = await contactRepository!.fetchContactsList();
    emit(state.copyWith(list: list, isLoading: false));
  }
}
