// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'katalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KatalogModel _$$_KatalogModelFromJson(Map<String, dynamic> json) =>
    _$_KatalogModel(
      id: json['id'] as int?,
      nama: json['nama'] as String?,
      kodeBarang: json['kodeBarang'] as String?,
      jenis: json['jenis'] as int?,
      hargaSewa: json['hargaSewa'] as int?,
      gambar: json['gambar'] as String?,
      satuan: json['satuan'] as int?,
    );

Map<String, dynamic> _$$_KatalogModelToJson(_$_KatalogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'kodeBarang': instance.kodeBarang,
      'jenis': instance.jenis,
      'hargaSewa': instance.hargaSewa,
      'gambar': instance.gambar,
      'satuan': instance.satuan,
    };
