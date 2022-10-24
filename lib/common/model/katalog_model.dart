import 'package:freezed_annotation/freezed_annotation.dart';
part 'katalog_model.freezed.dart';
part 'katalog_model.g.dart';

@Freezed()
class KatalogModel with _$KatalogModel {
  const factory KatalogModel({
    int? id,
    String? nama,
    String? kodeBarang,
    int? jenis,
    int? hargaSewa,
    String? gambar,
    int? satuan,
  }) = _KatalogModel;
  factory KatalogModel.fromJson(Map<String, dynamic> json) =>
      _$KatalogModelFromJson(json);
}
