import 'package:go_router/go_router.dart';
import 'package:rencanggunung_web_flutter/views/katalog_view.dart';
import 'package:rencanggunung_web_flutter/views/landing_page_view.dart';

// class Routes {
//   static final route = [
//     GetPage(
//         name: '/',
//         transition: Transition.fade,
//         transitionDuration: const Duration(milliseconds: 500),
//         page: () => const LandingPageView()),
//   ];
// }

final GoRouter route = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const LandingPageView(),
  ),
  GoRoute(
      path: '/katalog',
      builder: (context, state) {
        return const KatalogView();
      })
]);
