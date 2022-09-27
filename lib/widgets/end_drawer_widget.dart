import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              Get.toNamed('/home');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Katalog',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              launchUrlString(
                  'https://docs.google.com/document/d/1s6UcsGmCW8kTY8xGPTWiMyyeVPlrfxbSfmZIK58Xd5o');
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Syarat & Ketentuan',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
