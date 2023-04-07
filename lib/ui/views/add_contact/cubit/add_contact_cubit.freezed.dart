// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddContactState {
  String get callLabel => throw _privateConstructorUsedError;
  String get emailLabel => throw _privateConstructorUsedError;
  String get eventLabel => throw _privateConstructorUsedError;
  List<String> get callList => throw _privateConstructorUsedError;
  List<String> get emailList => throw _privateConstructorUsedError;
  List<String> get eventList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactStateCopyWith<AddContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactStateCopyWith<$Res> {
  factory $AddContactStateCopyWith(
          AddContactState value, $Res Function(AddContactState) then) =
      _$AddContactStateCopyWithImpl<$Res, AddContactState>;
  @useResult
  $Res call(
      {String callLabel,
      String emailLabel,
      String eventLabel,
      List<String> callList,
      List<String> emailList,
      List<String> eventList});
}

/// @nodoc
class _$AddContactStateCopyWithImpl<$Res, $Val extends AddContactState>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callLabel = null,
    Object? emailLabel = null,
    Object? eventLabel = null,
    Object? callList = null,
    Object? emailList = null,
    Object? eventList = null,
  }) {
    return _then(_value.copyWith(
      callLabel: null == callLabel
          ? _value.callLabel
          : callLabel // ignore: cast_nullable_to_non_nullable
              as String,
      emailLabel: null == emailLabel
          ? _value.emailLabel
          : emailLabel // ignore: cast_nullable_to_non_nullable
              as String,
      eventLabel: null == eventLabel
          ? _value.eventLabel
          : eventLabel // ignore: cast_nullable_to_non_nullable
              as String,
      callList: null == callList
          ? _value.callList
          : callList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emailList: null == emailList
          ? _value.emailList
          : emailList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventList: null == eventList
          ? _value.eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddContactStateCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$$_AddContactStateCopyWith(
          _$_AddContactState value, $Res Function(_$_AddContactState) then) =
      __$$_AddContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String callLabel,
      String emailLabel,
      String eventLabel,
      List<String> callList,
      List<String> emailList,
      List<String> eventList});
}

/// @nodoc
class __$$_AddContactStateCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$_AddContactState>
    implements _$$_AddContactStateCopyWith<$Res> {
  __$$_AddContactStateCopyWithImpl(
      _$_AddContactState _value, $Res Function(_$_AddContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callLabel = null,
    Object? emailLabel = null,
    Object? eventLabel = null,
    Object? callList = null,
    Object? emailList = null,
    Object? eventList = null,
  }) {
    return _then(_$_AddContactState(
      callLabel: null == callLabel
          ? _value.callLabel
          : callLabel // ignore: cast_nullable_to_non_nullable
              as String,
      emailLabel: null == emailLabel
          ? _value.emailLabel
          : emailLabel // ignore: cast_nullable_to_non_nullable
              as String,
      eventLabel: null == eventLabel
          ? _value.eventLabel
          : eventLabel // ignore: cast_nullable_to_non_nullable
              as String,
      callList: null == callList
          ? _value._callList
          : callList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      emailList: null == emailList
          ? _value._emailList
          : emailList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventList: null == eventList
          ? _value._eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AddContactState implements _AddContactState {
  _$_AddContactState(
      {required this.callLabel,
      required this.emailLabel,
      required this.eventLabel,
      required final List<String> callList,
      required final List<String> emailList,
      required final List<String> eventList})
      : _callList = callList,
        _emailList = emailList,
        _eventList = eventList;

  @override
  final String callLabel;
  @override
  final String emailLabel;
  @override
  final String eventLabel;
  final List<String> _callList;
  @override
  List<String> get callList {
    if (_callList is EqualUnmodifiableListView) return _callList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_callList);
  }

  final List<String> _emailList;
  @override
  List<String> get emailList {
    if (_emailList is EqualUnmodifiableListView) return _emailList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emailList);
  }

  final List<String> _eventList;
  @override
  List<String> get eventList {
    if (_eventList is EqualUnmodifiableListView) return _eventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventList);
  }

  @override
  String toString() {
    return 'AddContactState(callLabel: $callLabel, emailLabel: $emailLabel, eventLabel: $eventLabel, callList: $callList, emailList: $emailList, eventList: $eventList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddContactState &&
            (identical(other.callLabel, callLabel) ||
                other.callLabel == callLabel) &&
            (identical(other.emailLabel, emailLabel) ||
                other.emailLabel == emailLabel) &&
            (identical(other.eventLabel, eventLabel) ||
                other.eventLabel == eventLabel) &&
            const DeepCollectionEquality().equals(other._callList, _callList) &&
            const DeepCollectionEquality()
                .equals(other._emailList, _emailList) &&
            const DeepCollectionEquality()
                .equals(other._eventList, _eventList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      callLabel,
      emailLabel,
      eventLabel,
      const DeepCollectionEquality().hash(_callList),
      const DeepCollectionEquality().hash(_emailList),
      const DeepCollectionEquality().hash(_eventList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddContactStateCopyWith<_$_AddContactState> get copyWith =>
      __$$_AddContactStateCopyWithImpl<_$_AddContactState>(this, _$identity);
}

abstract class _AddContactState implements AddContactState {
  factory _AddContactState(
      {required final String callLabel,
      required final String emailLabel,
      required final String eventLabel,
      required final List<String> callList,
      required final List<String> emailList,
      required final List<String> eventList}) = _$_AddContactState;

  @override
  String get callLabel;
  @override
  String get emailLabel;
  @override
  String get eventLabel;
  @override
  List<String> get callList;
  @override
  List<String> get emailList;
  @override
  List<String> get eventList;
  @override
  @JsonKey(ignore: true)
  _$$_AddContactStateCopyWith<_$_AddContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
