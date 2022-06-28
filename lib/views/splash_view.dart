import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rencanggunung_web_flutter/views/home_view.dart';

class SplashView extends StatefulWidget {
  final String? title;
  const SplashView({Key? key, this.title}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          PageTransition(
            child: const MenuView(),
            type: PageTransitionType.fade,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: LoadingIndicator(
            indicatorType: Indicator.ballRotateChase,
            colors: [
              const Color.fromARGB(255, 255, 226, 10),
              Colors.green.shade700,
              const Color.fromARGB(255, 155, 155, 155),
            ],
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
