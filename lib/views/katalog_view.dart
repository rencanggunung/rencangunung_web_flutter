import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rencanggunung_web_flutter/common/model/katalog_model.dart';
import 'package:rencanggunung_web_flutter/common/providers/katalog_provider.dart';
import 'package:rencanggunung_web_flutter/core/services/api.dart';
import 'package:skeleton_text/skeleton_text.dart';

class KatalogView extends ConsumerWidget {
  const KatalogView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(katalogDataProvider);

    return Scaffold(
        body: data.when(
      data: (data) {
        List<KatalogModel> katalog = data!.map((e) => e).toList();
        return Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 10,
              left: 20,
              right: 20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: katalog.length,
                itemBuilder: (context, index) {
                  var products = katalog[index];
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: CachedNetworkImage(
                      imageUrl: '${Api.images}${products.gambar}',
                      height: MediaQuery.of(context).size.height / 10,
                      placeholder: (context, url) => SkeletonAnimation(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade200),
                      )),
                    ),
                  );
                },
              )),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: (() => const Center(child: CircularProgressIndicator())),
    ));
  }
}
