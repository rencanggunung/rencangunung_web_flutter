import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  // final audioplayer = AssetsAudioPlayer();
  bool playmusic = false;

  String ig = 'https://instagram.com/rencang_gunung';
  String gmaps = 'https://g.page/rencang_gunung?share';

  // @override
  // void initState() {
  //   audioplayer.open(Audio.liveStream(
  //       'https://rencanggunung.com/mp3/adele_someonelikeyou.mp3'));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            //   child: CircularProgressIndicator(
            //     color: Colors.blueGrey,
            //     backgroundColor: Colors.transparent,
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: 50,
              child: LoadingIndicator(
                indicatorType: Indicator.ballPulseSync,
                colors: [
                  Colors.black,
                  Colors.green.shade700,
                  const Color.fromARGB(255, 213, 213, 213),
                ],
                strokeWidth: 2,
              ),
            ),
            const Text(
              'C o m i n g   S o o n . . .',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        launchUrlString(ig,
                            mode: LaunchMode.externalApplication);
                      },
                      child: const Icon(
                        Bootstrap.instagram,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        launchUrlString(gmaps,
                            mode: LaunchMode.externalApplication);
                      },
                      child: const Icon(
                        Bootstrap.whatsapp,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Rencang Gunung Outdoor | 2022',
          style: TextStyle(color: Colors.grey.withOpacity(0.8)),
          textAlign: TextAlign.center,
        ),
      ),
      // floatingActionButton: InkWell(
      //   onTap: () async {
      //     setState(() {
      //       playmusic = false;
      //     });
      //     playmusic == true
      //         ? audioplayer.open(Audio.liveStream(
      //             'https://rencanggunung.com/mp3/adele_someonelikeyou.mp3'))
      //         : audioplayer.stop();
      //   },
      //   child: playmusic == true
      //       ? const Icon(Icons.stop)
      //       : const Icon(Icons.play_arrow),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
