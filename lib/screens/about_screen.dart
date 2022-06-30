import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button_menu.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

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
                  height: 80,
                ),
                const SizedBox(height: 78),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 26,
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0x25000000),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'School ABC adalah suatu aplikasi yang dirancang sebagai media pembelajaran huruf abjad latin dengan ejaannya yang disertai contoh gambar dan audio ejaan.',
                    style: GoogleFonts.schoolbell(
                        fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                ButtonMenu(
                    title: 'Kembali',
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
