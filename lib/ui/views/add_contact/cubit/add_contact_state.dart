part of 'add_contact_cubit.dart';

@freezed
class AddContactState with _$AddContactState {
  factory AddContactState({
    required String callLabel,
    required String emailLabel,
    required String eventLabel,
    required List<String> callList,
    required List<String> emailList,
    required List<String> eventList,
  }) = _AddContactState;

  factory AddContactState.initial() => AddContactState(
      callLabel: 'Mobile',
      callList: [
        'No label',
        'Mobile',
        'Work',
        'Home',
        'Main',
        'Work Fax',
        'Home Fax',
        'Pager',
        'Other'
      ],
      emailLabel: 'Home',
      emailList: ['No label', 'Work', 'Home', 'Other'],
      eventLabel: 'Anniversary',
      eventList: ['No label', 'Anniversary', 'Other']);
}
