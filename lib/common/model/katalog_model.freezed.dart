// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'katalog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KatalogModel _$KatalogModelFromJson(Map<String, dynamic> json) {
  return _KatalogModel.fromJson(json);
}

/// @nodoc
mixin _$KatalogModel {
  int? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get kodeBarang => throw _privateConstructorUsedError;
  int? get jenis => throw _privateConstructorUsedError;
  int? get hargaSewa => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;
  int? get satuan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KatalogModelCopyWith<KatalogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KatalogModelCopyWith<$Res> {
  factory $KatalogModelCopyWith(
          KatalogModel value, $Res Function(KatalogModel) then) =
      _$KatalogModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? nama,
      String? kodeBarang,
      int? jenis,
      int? hargaSewa,
      String? gambar,
      int? satuan});
}

/// @nodoc
class _$KatalogModelCopyWithImpl<$Res> implements $KatalogModelCopyWith<$Res> {
  _$KatalogModelCopyWithImpl(this._value, this._then);

  final KatalogModel _value;
  // ignore: unused_field
  final $Res Function(KatalogModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kodeBarang = freezed,
    Object? jenis = freezed,
    Object? hargaSewa = freezed,
    Object? gambar = freezed,
    Object? satuan = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: jenis == freezed
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as int?,
      hargaSewa: hargaSewa == freezed
          ? _value.hargaSewa
          : hargaSewa // ignore: cast_nullable_to_non_nullable
              as int?,
      gambar: gambar == freezed
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      satuan: satuan == freezed
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_KatalogModelCopyWith<$Res>
    implements $KatalogModelCopyWith<$Res> {
  factory _$$_KatalogModelCopyWith(
          _$_KatalogModel value, $Res Function(_$_KatalogModel) then) =
      __$$_KatalogModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? nama,
      String? kodeBarang,
      int? jenis,
      int? hargaSewa,
      String? gambar,
      int? satuan});
}

/// @nodoc
class __$$_KatalogModelCopyWithImpl<$Res>
    extends _$KatalogModelCopyWithImpl<$Res>
    implements _$$_KatalogModelCopyWith<$Res> {
  __$$_KatalogModelCopyWithImpl(
      _$_KatalogModel _value, $Res Function(_$_KatalogModel) _then)
      : super(_value, (v) => _then(v as _$_KatalogModel));

  @override
  _$_KatalogModel get _value => super._value as _$_KatalogModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kodeBarang = freezed,
    Object? jenis = freezed,
    Object? hargaSewa = freezed,
    Object? gambar = freezed,
    Object? satuan = freezed,
  }) {
    return _then(_$_KatalogModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: jenis == freezed
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as int?,
      hargaSewa: hargaSewa == freezed
          ? _value.hargaSewa
          : hargaSewa // ignore: cast_nullable_to_non_nullable
              as int?,
      gambar: gambar == freezed
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      satuan: satuan == freezed
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KatalogModel implements _KatalogModel {
  const _$_KatalogModel(
      {this.id,
      this.nama,
      this.kodeBarang,
      this.jenis,
      this.hargaSewa,
      this.gambar,
      this.satuan});

  factory _$_KatalogModel.fromJson(Map<String, dynamic> json) =>
      _$$_KatalogModelFromJson(json);

  @override
  final int? id;
  @override
  final String? nama;
  @override
  final String? kodeBarang;
  @override
  final int? jenis;
  @override
  final int? hargaSewa;
  @override
  final String? gambar;
  @override
  final int? satuan;

  @override
  String toString() {
    return 'KatalogModel(id: $id, nama: $nama, kodeBarang: $kodeBarang, jenis: $jenis, hargaSewa: $hargaSewa, gambar: $gambar, satuan: $satuan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KatalogModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality()
                .equals(other.kodeBarang, kodeBarang) &&
            const DeepCollectionEquality().equals(other.jenis, jenis) &&
            const DeepCollectionEquality().equals(other.hargaSewa, hargaSewa) &&
            const DeepCollectionEquality().equals(other.gambar, gambar) &&
            const DeepCollectionEquality().equals(other.satuan, satuan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(kodeBarang),
      const DeepCollectionEquality().hash(jenis),
      const DeepCollectionEquality().hash(hargaSewa),
      const DeepCollectionEquality().hash(gambar),
      const DeepCollectionEquality().hash(satuan));

  @JsonKey(ignore: true)
  @override
  _$$_KatalogModelCopyWith<_$_KatalogModel> get copyWith =>
      __$$_KatalogModelCopyWithImpl<_$_KatalogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KatalogModelToJson(
      this,
    );
  }
}

abstract class _KatalogModel implements KatalogModel {
  const factory _KatalogModel(
      {final int? id,
      final String? nama,
      final String? kodeBarang,
      final int? jenis,
      final int? hargaSewa,
      final String? gambar,
      final int? satuan}) = _$_KatalogModel;

  factory _KatalogModel.fromJson(Map<String, dynamic> json) =
      _$_KatalogModel.fromJson;

  @override
  int? get id;
  @override
  String? get nama;
  @override
  String? get kodeBarang;
  @override
  int? get jenis;
  @override
  int? get hargaSewa;
  @override
  String? get gambar;
  @override
  int? get satuan;
  @override
  @JsonKey(ignore: true)
  _$$_KatalogModelCopyWith<_$_KatalogModel> get copyWith =>
      throw _privateConstructorUsedError;
}
