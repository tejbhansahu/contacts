// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DisplayContactState {
  AddContactResponse get contact => throw _privateConstructorUsedError;
  dynamic get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisplayContactStateCopyWith<DisplayContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayContactStateCopyWith<$Res> {
  factory $DisplayContactStateCopyWith(
          DisplayContactState value, $Res Function(DisplayContactState) then) =
      _$DisplayContactStateCopyWithImpl<$Res, DisplayContactState>;
  @useResult
  $Res call({AddContactResponse contact, dynamic key});
}

/// @nodoc
class _$DisplayContactStateCopyWithImpl<$Res, $Val extends DisplayContactState>
    implements $DisplayContactStateCopyWith<$Res> {
  _$DisplayContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AddContactResponse,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DisplayContactStateCopyWith<$Res>
    implements $DisplayContactStateCopyWith<$Res> {
  factory _$$_DisplayContactStateCopyWith(_$_DisplayContactState value,
          $Res Function(_$_DisplayContactState) then) =
      __$$_DisplayContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddContactResponse contact, dynamic key});
}

/// @nodoc
class __$$_DisplayContactStateCopyWithImpl<$Res>
    extends _$DisplayContactStateCopyWithImpl<$Res, _$_DisplayContactState>
    implements _$$_DisplayContactStateCopyWith<$Res> {
  __$$_DisplayContactStateCopyWithImpl(_$_DisplayContactState _value,
      $Res Function(_$_DisplayContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? key = freezed,
  }) {
    return _then(_$_DisplayContactState(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as AddContactResponse,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_DisplayContactState implements _DisplayContactState {
  _$_DisplayContactState({required this.contact, required this.key});

  @override
  final AddContactResponse contact;
  @override
  final dynamic key;

  @override
  String toString() {
    return 'DisplayContactState(contact: $contact, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayContactState &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, contact, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayContactStateCopyWith<_$_DisplayContactState> get copyWith =>
      __$$_DisplayContactStateCopyWithImpl<_$_DisplayContactState>(
          this, _$identity);
}

abstract class _DisplayContactState implements DisplayContactState {
  factory _DisplayContactState(
      {required final AddContactResponse contact,
      required final dynamic key}) = _$_DisplayContactState;

  @override
  AddContactResponse get contact;
  @override
  dynamic get key;
  @override
  @JsonKey(ignore: true)
  _$$_DisplayContactStateCopyWith<_$_DisplayContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
