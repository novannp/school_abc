import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/button_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7292CF),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icons/bg menu.png'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/icons/bg bawah.png',
              width: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                'assets/icons/bg bawah.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/Logo.png',
                  height: 100,
                ),
                const SizedBox(height: 78),
                ButtonMenu(
                  title: 'Menu Abjad',
                  onPressed: () {
                    Navigator.pushNamed(context, '/list-abjad');
                  },
                ),
                ButtonMenu(
                  title: 'Tentang',
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                ButtonMenu(
                  title: 'Keluar',
                  onPressed: () {
                    exit(0);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
