import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rencanggunung_web_flutter/common/warna.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            'assets/images/bg_landing.svg',
            color: greenOne.withOpacity(0.3),
          ),
        ),
        Positioned(
          top: 0,
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
        Positioned(
          right: 30,
          left: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text('Home'),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text('Katalog'),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text('About'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Start Adventure\nWith Us',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: blueOne),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sewa alat camping dan outdoor murah sejaga raya!',
                    style: TextStyle(
                        fontSize: 14,
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
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            'Booking Sekarang',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  )
                ],
              )),
        ),
      ],
    ));
  }
}
