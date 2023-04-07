// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewContactState {
  List<AddContactResponse> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewContactStateCopyWith<ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactStateCopyWith<$Res> {
  factory $ViewContactStateCopyWith(
          ViewContactState value, $Res Function(ViewContactState) then) =
      _$ViewContactStateCopyWithImpl<$Res, ViewContactState>;
  @useResult
  $Res call({List<AddContactResponse> list, bool isLoading});
}

/// @nodoc
class _$ViewContactStateCopyWithImpl<$Res, $Val extends ViewContactState>
    implements $ViewContactStateCopyWith<$Res> {
  _$ViewContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AddContactResponse>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewContactStateCopyWith<$Res>
    implements $ViewContactStateCopyWith<$Res> {
  factory _$$_ViewContactStateCopyWith(
          _$_ViewContactState value, $Res Function(_$_ViewContactState) then) =
      __$$_ViewContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddContactResponse> list, bool isLoading});
}

/// @nodoc
class __$$_ViewContactStateCopyWithImpl<$Res>
    extends _$ViewContactStateCopyWithImpl<$Res, _$_ViewContactState>
    implements _$$_ViewContactStateCopyWith<$Res> {
  __$$_ViewContactStateCopyWithImpl(
      _$_ViewContactState _value, $Res Function(_$_ViewContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ViewContactState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AddContactResponse>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ViewContactState implements _ViewContactState {
  _$_ViewContactState(
      {required final List<AddContactResponse> list, required this.isLoading})
      : _list = list;

  final List<AddContactResponse> _list;
  @override
  List<AddContactResponse> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ViewContactState(list: $list, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewContactState &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewContactStateCopyWith<_$_ViewContactState> get copyWith =>
      __$$_ViewContactStateCopyWithImpl<_$_ViewContactState>(this, _$identity);
}

abstract class _ViewContactState implements ViewContactState {
  factory _ViewContactState(
      {required final List<AddContactResponse> list,
      required final bool isLoading}) = _$_ViewContactState;

  @override
  List<AddContactResponse> get list;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ViewContactStateCopyWith<_$_ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
