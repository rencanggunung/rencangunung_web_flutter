import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rencanggunung_web_flutter/common/repositories/katalog_repository.dart';

// final katalogProvider =
//     ChangeNotifierProvider<KatalogRepository>((ref) => KatalogRepository());

final katalogProvider = Provider((ref) => KatalogRepository());
