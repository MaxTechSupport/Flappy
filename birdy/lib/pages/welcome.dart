import 'package:flutter/material.dart';
import 'package:health/start.dart';
import 'package:just_audio/just_audio.dart';

import '../helpers/appcolors.dart';
import '../helpers/iconhelper.dart';
import '../widgets/iconfont.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500), () async {
      await player.setAsset("assets/audio/110percent.mp3");
      player.setVolume(1);
      player.play();
    });
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'assets/imgs/something.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 180,
                            height: 180,
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            child: IconFont(
                              iconName: IconFontHelper.logo,
                              size: 130,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Hello Sir",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            "I will help you repair Computer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 246, 127, 85),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Let\'s get started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WelcomePage()));
                                  },
                                  splashColor:
                                      const Color.fromARGB(255, 246, 127, 85),
                                  highlightColor:
                                      const Color.fromARGB(255, 246, 127, 85),
                                  child: Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 246, 127, 85),
                                            width: 4),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                          'I don\'t want the help',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16))),
                                )),
                          )),
                    ],
                  ),
                )),
              ],
            )));
  }
}
