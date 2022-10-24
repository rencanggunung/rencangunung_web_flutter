import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rencanggunung_web_flutter/common/responsiver.dart';
import 'package:rencanggunung_web_flutter/common/url.dart';
import 'package:rencanggunung_web_flutter/common/warna.dart';
import 'package:rencanggunung_web_flutter/widgets/end_drawer_widget.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:go_router/go_router.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        key: _scaffoldKey,
        drawer: endDrawer(context),
        body: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.onEdge,
          color: greenOne,
          onRefresh: () async {
            await Future.delayed(
              const Duration(seconds: 2),
              (() {
                context.go('/');
              }),
            );
          },
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: SafeArea(
                  child: Stack(
                    children: [
                      if (isMobie(context))
                        Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            'assets/images/bg_landing.svg',
                            color: greenOne.withOpacity(0.3),
                            fit: BoxFit.cover,
                          ),
                        ),
                      if (!isMobie(context))
                        Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            'assets/images/bg_landing.svg',
                            color: greenOne.withOpacity(0.3),
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                        ),
                      if (isMobie(context))
                        Positioned(
                          top: MediaQuery.of(context).size.height / 35,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
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
                          top: MediaQuery.of(context).size.height / 35,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/rg_logo.png',
                                  height: 150,
                                  width: 150,
                                )
                              ],
                            ),
                          ),
                        ),
                      if (!isMobie(context))
                        Positioned(
                          top: 30,
                          right: 30,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.go('/');
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Home',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  context.go('/katalog');
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Katalog',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  launchUrlString(pricelist,
                                      mode: LaunchMode.externalApplication);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Pricelist',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  launchUrlString(sk);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Syarat & Ketentuan',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showTopSnackBar(
                                      context,
                                      const CustomSnackBar.info(
                                          message: 'Developer by CahyonoDev'));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'About',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (isMobie(context))
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: _openEndDrawer,
                              icon: const Icon(Icons.menu)),
                        ),
                      if (isMobie(context))
                        Positioned(
                          top: MediaQuery.of(context).size.height / 4,
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
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
                                        fontWeight: FontWeight.w700,
                                        color: blueOne),
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
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
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
                                                    mode: LaunchMode
                                                        .externalApplication);
                                              },
                                              child: const Center(
                                                child: Text(
                                                  'Booking Sekarang',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ));
                                        }),
                                  )
                                ],
                              )),
                        ),
                      if (!isMobie(context))
                        Positioned(
                          top: MediaQuery.of(context).size.height / 4,
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const AutoSizeText(
                                    'Start Adventure\nWith Us',
                                    maxLines: 2,
                                    minFontSize: 100,
                                    maxFontSize: 150,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: blueOne),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const AutoSizeText(
                                    'Sewa alat camping dan outdoor murah sejagat raya!',
                                    maxLines: 2,
                                    maxFontSize: 50,
                                    minFontSize: 30,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 250,
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
                                                    mode: LaunchMode
                                                        .externalApplication);
                                              },
                                              child: const Center(
                                                child: Text(
                                                  'Booking Sekarang',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ));
                                        }),
                                  )
                                ],
                              )),
                        ),
                      if (isMobie(context))
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height / 50),
                            child: RichText(
                              text: const TextSpan(children: [
                                // WidgetSpan(child: CustomPaint())
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.top,
                                    child: Icon(
                                      Icons.copyright,
                                      size: 12,
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                    text:
                                        'All Right Reserved | Rencang Gunung Outdoor 2022',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      if (!isMobie(context))
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height / 50),
                            child: RichText(
                              text: const TextSpan(children: [
                                // WidgetSpan(child: CustomPaint())
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.top,
                                    child: Icon(
                                      Icons.copyright,
                                      size: 15,
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                    text:
                                        'All Right Reserved | Rencang Gunung Outdoor 2022',
                                    style: TextStyle(color: Colors.grey)),
                              ]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: (isMobie(context))
            ? FloatingActionButtonLocation.miniEndFloat
            : FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Link(
              target: LinkTarget.self,
              uri: Uri.parse(ig),
              builder: (context, function) {
                return TextButton(
                  onPressed: () {
                    launchUrlString(wa, mode: LaunchMode.externalApplication);
                  },
                  child: isMobie(context)
                      ? SizedBox(
                          height: 40,
                          child: FloatingActionButton(
                            backgroundColor: greenOne,
                            onPressed: () {
                              launchUrlString(ig,
                                  mode: LaunchMode.externalApplication);
                            },
                            child: const Icon(
                              FontAwesome.instagram,
                              size: 20,
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 50,
                          child: FloatingActionButton(
                            backgroundColor: greenOne,
                            onPressed: () {
                              launchUrlString(ig,
                                  mode: LaunchMode.externalApplication);
                            },
                            child: const Icon(
                              FontAwesome.instagram,
                              size: 20,
                            ),
                          ),
                        ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Link(
              target: LinkTarget.self,
              uri: Uri.parse(maps),
              builder: (context, function) {
                return TextButton(
                    onPressed: () {
                      launchUrlString(wa, mode: LaunchMode.externalApplication);
                    },
                    child: isMobie(context)
                        ? SizedBox(
                            height: 40,
                            child: FloatingActionButton(
                              backgroundColor: greenOne,
                              onPressed: () {
                                launchUrlString(maps,
                                    mode: LaunchMode.externalApplication);
                              },
                              child: const Icon(
                                IonIcons.location,
                                size: 20,
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 50,
                            child: FloatingActionButton(
                              backgroundColor: greenOne,
                              onPressed: () {
                                launchUrlString(maps,
                                    mode: LaunchMode.externalApplication);
                              },
                              child: const Icon(
                                IonIcons.location,
                                size: 20,
                              ),
                            ),
                          ));
              },
            )
          ],
        ));
  }
}
