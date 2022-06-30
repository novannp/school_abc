import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:school_abc/models/abjad.dart';
import 'package:school_abc/screens/abjad_screen.dart';
import 'package:school_abc/screens/main_screen.dart';

import 'screens/about_screen.dart';
import 'screens/list_abjad_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const SchoolABCApp());
}

class SchoolABCApp extends StatelessWidget {
  const SchoolABCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/main':
            return PageTransition(
              child: const MainScreen(),
              type: PageTransitionType.size,
              alignment: Alignment.topCenter,
            );
          case '/list-abjad':
            return PageTransition(
                child: const ListAbjadScreen(),
                type: PageTransitionType.size,
                alignment: Alignment.centerRight);
          default:
            return null;
        }
      },
      title: 'School ABC',
      routes: {
        '/': (context) => const SplashScreen(),
        '/about': (context) => const AboutScreen(),
        '/list-abjad': (context) => const ListAbjadScreen(),
        '/a': (context) => AbjadScreen(abjad: abjadList[0]),
        '/b': (context) => AbjadScreen(abjad: abjadList[1]),
        '/c': (context) => AbjadScreen(abjad: abjadList[2]),
        '/d': (context) => AbjadScreen(abjad: abjadList[3]),
        '/e': (context) => AbjadScreen(abjad: abjadList[4]),
        '/f': (context) => AbjadScreen(abjad: abjadList[5]),
        '/g': (context) => AbjadScreen(abjad: abjadList[6]),
        '/h': (context) => AbjadScreen(abjad: abjadList[7]),
        '/i': (context) => AbjadScreen(abjad: abjadList[8]),
        '/j': (context) => AbjadScreen(abjad: abjadList[9]),
        '/k': (context) => AbjadScreen(abjad: abjadList[10]),
        '/l': (context) => AbjadScreen(abjad: abjadList[11]),
        '/m': (context) => AbjadScreen(abjad: abjadList[12]),
        '/n': (context) => AbjadScreen(abjad: abjadList[13]),
        '/o': (context) => AbjadScreen(abjad: abjadList[14]),
        '/p': (context) => AbjadScreen(abjad: abjadList[15]),
        '/q': (context) => AbjadScreen(abjad: abjadList[16]),
        '/r': (context) => AbjadScreen(abjad: abjadList[17]),
        '/s': (context) => AbjadScreen(abjad: abjadList[18]),
        '/t': (context) => AbjadScreen(abjad: abjadList[19]),
        '/u': (context) => AbjadScreen(abjad: abjadList[20]),
        '/v': (context) => AbjadScreen(abjad: abjadList[21]),
        '/w': (context) => AbjadScreen(abjad: abjadList[22]),
        '/x': (context) => AbjadScreen(abjad: abjadList[23]),
        '/y': (context) => AbjadScreen(abjad: abjadList[24]),
        '/z': (context) => AbjadScreen(abjad: abjadList[25]),
      },
    );
  }
}
