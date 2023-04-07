part of 'view_contact_cubit.dart';

@freezed
class ViewContactState with _$ViewContactState {
  factory ViewContactState(
      {required List<AddContactResponse> list,
      required bool isLoading}) = _ViewContactState;

  factory ViewContactState.initial() =>
      ViewContactState(list: [], isLoading: false);
}
