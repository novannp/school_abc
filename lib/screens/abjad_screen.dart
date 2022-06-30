import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_abc/widgets/button_navigation.dart';

import '../models/abjad.dart';

class AbjadScreen extends StatefulWidget {
  final Abjad abjad;
  const AbjadScreen({Key? key, required this.abjad}) : super(key: key);

  @override
  State<AbjadScreen> createState() => _AbjadScreenState();
}

class _AbjadScreenState extends State<AbjadScreen> {
  int maxDuration = 100;
  int currentPos = 0;
  bool isPlaying = false;
  bool audioPlayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      ByteData bytes = await rootBundle.load(widget.abjad.audioUrl);
      audiobytes =
          bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      player.onDurationChanged.listen((Duration d) {
        //get the duration of audio
        maxDuration = d.inMilliseconds;
        setState(() {});
      });
      setState(() {});
    });
    super.initState();
  }

  void clearPlayer() {
    setState(() {
      isPlaying = false;
      audioPlayed = false;
    });
  }

  Future play() async {
    clearPlayer();
    if (!isPlaying && !audioPlayed) {
      int result = await player.playBytes(audiobytes);
      if (result == 1) {
        setState(() async {
          isPlaying = true;
          audioPlayed = true;

          //stop
        });
      } else {
        // ignore: avoid_print
        print("ERROR");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    // var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff7292CF),
                    Color(0xff2855AE),
                  ]),
                ),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/icons/bg atas.png',
            ),
          ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: SafeArea(
          //     child: IconButton(
          //       icon: const Icon(
          //         Icons.arrow_back,
          //         color: Colors.white,
          //       ),
          //       onPressed: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: deviceWidth <= 393 ? 60 : 120,
                      bottom: deviceWidth < 393 ? 40 : 120),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
                  decoration: BoxDecoration(
                      color: const Color(0x10000000),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x00000080),
                          blurRadius: 20,
                          offset: Offset(-10, -10),
                          spreadRadius: 10,
                        ),
                      ]),
                  child: Text(
                    widget.abjad.abjad,
                    style: GoogleFonts.poppins(
                      fontSize: deviceWidth <= 360 ? 34 : 40,
                      color: Colors.white,
                      letterSpacing: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(widget.abjad.imageUrl),
                        const SizedBox(height: 40),
                        Text(
                          widget.abjad.animalName.toUpperCase(),
                          style: GoogleFonts.schoolbell(fontSize: 36),
                        ),
                        const SizedBox(height: 17),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/ic music.png',
                              height: deviceWidth <= 360 ? 30 : 40,
                            ),
                            const SizedBox(width: 17),
                            Image.asset(
                              'assets/icons/ic nada music.png',
                              height: deviceWidth <= 360 ? 30 : 40,
                            ),
                            const SizedBox(width: 17),
                            ButtonNavigation(
                              backgroundColor: const Color(0xffFFD066),
                              iconImage:
                                  Image.asset('assets/icons/ic black play.png'),
                              borderRadius: 100,
                              onPressed: () {
                                play();
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // NAVIGASI
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonNavigation(
                              backgroundColor: const Color(0xffD67676),
                              iconImage: Image.asset(
                                  'assets/icons/Vic black close.png'),
                              borderRadius: 15,
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/list-abjad', (route) => true);
                              },
                            ),
                            ButtonNavigation(
                              backgroundColor: const Color(0xff06BFAD),
                              iconImage: Image.asset(
                                  'assets/icons/ic black back-1.png'),
                              borderRadius: 15,
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    widget.abjad.previousRoute,
                                    (route) => true);
                              },
                            ),
                            ButtonNavigation(
                              backgroundColor: const Color(0xff06BFAD),
                              iconImage:
                                  Image.asset('assets/icons/ic black back.png'),
                              borderRadius: 15,
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    widget.abjad.nextRoute, (route) => true);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/icons/bg bawah.png'),
          ),
        ],
      ),
    );
  }
}
