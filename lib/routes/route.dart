import 'package:get/get.dart';
import 'package:rencanggunung_web_flutter/views/landing_page_view.dart';

class Routes {
  static final route = [
    GetPage(
        name: '/home',
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 500),
        page: () => const LandingPageView()),
  ];
}
