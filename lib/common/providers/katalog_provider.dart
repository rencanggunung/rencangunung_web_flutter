import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rencanggunung_web_flutter/common/controllers/katalog_controller.dart';
import 'package:rencanggunung_web_flutter/common/model/katalog_model.dart';

final katalogDataProvider = FutureProvider<List<KatalogModel>?>((ref) async {
  return ref.watch(katalogProvider).getKatalog();
});
