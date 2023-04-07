part of 'display_contact_cubit.dart';

@freezed
class DisplayContactState with _$DisplayContactState {
  factory DisplayContactState(
      {required AddContactResponse contact,
      required dynamic key}) = _DisplayContactState;

  factory DisplayContactState.initial() =>
      DisplayContactState(contact: AddContactResponse(tag: 'Tag'), key: '');
}
