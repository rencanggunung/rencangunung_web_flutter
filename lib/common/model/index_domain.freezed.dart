// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndexDomain _$IndexDomainFromJson(Map<String, dynamic> json) {
  return _IndexDomain.fromJson(json);
}

/// @nodoc
mixin _$IndexDomain {
  String get status => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  String get textHtml => throw _privateConstructorUsedError;
  String get iconParser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexDomainCopyWith<IndexDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexDomainCopyWith<$Res> {
  factory $IndexDomainCopyWith(
          IndexDomain value, $Res Function(IndexDomain) then) =
      _$IndexDomainCopyWithImpl<$Res>;
  $Res call(
      {String status, dynamic message, String textHtml, String iconParser});
}

/// @nodoc
class _$IndexDomainCopyWithImpl<$Res> implements $IndexDomainCopyWith<$Res> {
  _$IndexDomainCopyWithImpl(this._value, this._then);

  final IndexDomain _value;
  // ignore: unused_field
  final $Res Function(IndexDomain) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? textHtml = freezed,
    Object? iconParser = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      textHtml: textHtml == freezed
          ? _value.textHtml
          : textHtml // ignore: cast_nullable_to_non_nullable
              as String,
      iconParser: iconParser == freezed
          ? _value.iconParser
          : iconParser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IndexDomainCopyWith<$Res>
    implements $IndexDomainCopyWith<$Res> {
  factory _$$_IndexDomainCopyWith(
          _$_IndexDomain value, $Res Function(_$_IndexDomain) then) =
      __$$_IndexDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status, dynamic message, String textHtml, String iconParser});
}

/// @nodoc
class __$$_IndexDomainCopyWithImpl<$Res> extends _$IndexDomainCopyWithImpl<$Res>
    implements _$$_IndexDomainCopyWith<$Res> {
  __$$_IndexDomainCopyWithImpl(
      _$_IndexDomain _value, $Res Function(_$_IndexDomain) _then)
      : super(_value, (v) => _then(v as _$_IndexDomain));

  @override
  _$_IndexDomain get _value => super._value as _$_IndexDomain;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? textHtml = freezed,
    Object? iconParser = freezed,
  }) {
    return _then(_$_IndexDomain(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      textHtml: textHtml == freezed
          ? _value.textHtml
          : textHtml // ignore: cast_nullable_to_non_nullable
              as String,
      iconParser: iconParser == freezed
          ? _value.iconParser
          : iconParser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndexDomain implements _IndexDomain {
  const _$_IndexDomain(
      {required this.status,
      required this.message,
      required this.textHtml,
      required this.iconParser});

  factory _$_IndexDomain.fromJson(Map<String, dynamic> json) =>
      _$$_IndexDomainFromJson(json);

  @override
  final String status;
  @override
  final dynamic message;
  @override
  final String textHtml;
  @override
  final String iconParser;

  @override
  String toString() {
    return 'IndexDomain(status: $status, message: $message, textHtml: $textHtml, iconParser: $iconParser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndexDomain &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.textHtml, textHtml) &&
            const DeepCollectionEquality()
                .equals(other.iconParser, iconParser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(textHtml),
      const DeepCollectionEquality().hash(iconParser));

  @JsonKey(ignore: true)
  @override
  _$$_IndexDomainCopyWith<_$_IndexDomain> get copyWith =>
      __$$_IndexDomainCopyWithImpl<_$_IndexDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndexDomainToJson(
      this,
    );
  }
}

abstract class _IndexDomain implements IndexDomain {
  const factory _IndexDomain(
      {required final String status,
      required final dynamic message,
      required final String textHtml,
      required final String iconParser}) = _$_IndexDomain;

  factory _IndexDomain.fromJson(Map<String, dynamic> json) =
      _$_IndexDomain.fromJson;

  @override
  String get status;
  @override
  dynamic get message;
  @override
  String get textHtml;
  @override
  String get iconParser;
  @override
  @JsonKey(ignore: true)
  _$$_IndexDomainCopyWith<_$_IndexDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
