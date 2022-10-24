import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rencanggunung_web_flutter/common/url.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
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
              context.pop();
              context.go('/');
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
              // context.pop();
              // showTopSnackBar(context,
              //     const CustomSnackBar.info(message: 'Coming Soon!!!'));
              context.go('/katalog');
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
              context.pop();
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
              context.pop();
              showTopSnackBar(
                  context,
                  const CustomSnackBar.info(
                      message: 'Developer by CahyonoDev'));
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
