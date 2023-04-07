// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_alert_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmAlertRequest extends ConfirmAlertRequest {
  @override
  final String title;
  @override
  final String? description;
  @override
  final String buttonTitle;

  factory _$ConfirmAlertRequest(
          [void Function(ConfirmAlertRequestBuilder)? updates]) =>
      (new ConfirmAlertRequestBuilder()..update(updates))._build();

  _$ConfirmAlertRequest._(
      {required this.title, this.description, required this.buttonTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'ConfirmAlertRequest', 'title');
    BuiltValueNullFieldError.checkNotNull(
        buttonTitle, r'ConfirmAlertRequest', 'buttonTitle');
  }

  @override
  ConfirmAlertRequest rebuild(
          void Function(ConfirmAlertRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmAlertRequestBuilder toBuilder() =>
      new ConfirmAlertRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmAlertRequest &&
        title == other.title &&
        description == other.description &&
        buttonTitle == other.buttonTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, buttonTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmAlertRequest')
          ..add('title', title)
          ..add('description', description)
          ..add('buttonTitle', buttonTitle))
        .toString();
  }
}

class ConfirmAlertRequestBuilder
    implements Builder<ConfirmAlertRequest, ConfirmAlertRequestBuilder> {
  _$ConfirmAlertRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _buttonTitle;
  String? get buttonTitle => _$this._buttonTitle;
  set buttonTitle(String? buttonTitle) => _$this._buttonTitle = buttonTitle;

  ConfirmAlertRequestBuilder();

  ConfirmAlertRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _buttonTitle = $v.buttonTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmAlertRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmAlertRequest;
  }

  @override
  void update(void Function(ConfirmAlertRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmAlertRequest build() => _build();

  _$ConfirmAlertRequest _build() {
    final _$result = _$v ??
        new _$ConfirmAlertRequest._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ConfirmAlertRequest', 'title'),
            description: description,
            buttonTitle: BuiltValueNullFieldError.checkNotNull(
                buttonTitle, r'ConfirmAlertRequest', 'buttonTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
