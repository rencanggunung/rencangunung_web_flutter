import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rencanggunung_web_flutter/common/url.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget endDrawer(BuildContext context) {
  return Drawer(
      child: SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.back();
              Get.toNamed('/');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.snackbar('Perhatian', 'Coming Soon!!!');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Katalog',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              launchUrlString(pricelist, mode: LaunchMode.externalApplication);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Pricelist',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              launchUrlString(sk);
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Syarat & Ketentuan',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.snackbar('About', 'Developer by CahyonoDev');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
