import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rencanggunung_web_flutter/common/model/katalog_model.dart';
import 'package:rencanggunung_web_flutter/core/services/api.dart';

class KatalogRepository extends ChangeNotifier {
  Dio dio = Dio();
  Response? response;

  Future<List<KatalogModel>?> getKatalog() async {
    try {
      response = await dio.get(Api.products);
      Iterable data = response!.data;
      notifyListeners();

      List<KatalogModel> katalog =
          data.map((e) => KatalogModel.fromJson(e)).toList();
      if (kDebugMode) {
        print(' data: $data');
      }
      return katalog;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('error $e');
      }
    }
  }
}
