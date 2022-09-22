import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget endDrawer(BuildContext context) {
  return Drawer(
      child: SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Home'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Katalog'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {
              launchUrlString(
                  'https://docs.google.com/document/d/1s6UcsGmCW8kTY8xGPTWiMyyeVPlrfxbSfmZIK58Xd5o/edit');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Syarat & Ketentuan'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('About'),
            ),
          ),
        ],
      ),
    ),
  ));
}
