import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rencanggunung_web_flutter/common/responsiver.dart';
import 'package:rencanggunung_web_flutter/common/url.dart';
import 'package:rencanggunung_web_flutter/common/warna.dart';
import 'package:rencanggunung_web_flutter/widgets/end_drawer_widget.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: endDrawer(context),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/images/bg_landing.svg',
                color: greenOne.withOpacity(0.3),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 35,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/rg_logo.png',
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
            ),
            if (!isMobie(context))
              Positioned(
                top: 30,
                right: 30,
                left: 50,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Home'),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Katalog'),
                      ),
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
            if (isMobie(context))
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: _openEndDrawer, icon: const Icon(Icons.menu)),
              ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AutoSizeText(
                        'Start Adventure\nWith Us',
                        maxLines: 2,
                        minFontSize: 40,
                        maxFontSize: 50,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: blueOne),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AutoSizeText(
                        'Sewa alat camping dan outdoor murah sejagat raya!',
                        maxLines: 2,
                        maxFontSize: 14,
                        minFontSize: 12,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                colors: [greenOne, blueTwo],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                        child: Link(
                            target: LinkTarget.self,
                            uri: Uri.parse(wa),
                            builder: (context, function) {
                              return TextButton(
                                  onPressed: () {
                                    launchUrlString(wa,
                                        mode: LaunchMode.externalApplication);
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Booking Sekarang',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ));
                            }),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 50),
        child: RichText(
          text: const TextSpan(children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.top,
                child: Icon(
                  Icons.copyright,
                  size: 15,
                  color: Colors.grey,
                )),
            TextSpan(
                text: 'All Right Reserved | Alugoro Farm 2022',
                style: TextStyle(color: Colors.grey)),
          ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
