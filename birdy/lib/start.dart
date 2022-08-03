import 'package:flutter/material.dart';

import '/helpers/appcolors.dart';
import 'package:just_audio/just_audio.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("PhoneScan & Antivirus Pro"),backgroundColor: AppColors.mainColor,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () async {
                  await player.setAsset(
                      "assets/audio/urcomputerishacked.mp3");
                  await player.setVolume(1);
                  player.play();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SfLinearGauge(
                        barPointers: const [
                          LinearBarPointer(
                              value: 100,
                              thickness: 10,
                              edgeStyle: LinearEdgeStyle.endCurve),
                        ],
                      ),
                      Text("Hack Probability"),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () async {
                  await player.setAsset(
                      "assets/audio/urcomputerishacked.mp3");
                  await player.setVolume(1);
                  player.play();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SfLinearGauge(
                        barPointers: const [
                          LinearBarPointer(
                              animationType: LinearAnimationType.bounceOut ,
                              enableAnimation: true,
                              value: 10,
                              thickness: 10,
                              edgeStyle: LinearEdgeStyle.endCurve),
                        ],
                      ),
                      Text("Phone Security"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
