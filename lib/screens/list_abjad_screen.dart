import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_abc/widgets/abjad_tile.dart';
import 'package:school_abc/widgets/custom_scroll.dart';

import '../models/abjad.dart';
import 'abjad_screen.dart';

class ListAbjadScreen extends StatelessWidget {
  const ListAbjadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          },
        ),
      ),
      backgroundColor: const Color(0xff7292CF),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 86),
            child: Text(
              'Pilih Abjad'.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                letterSpacing: 10,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: ScrollConfiguration(
                behavior: CustomScroll(),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 2),
                    itemCount: abjadList.length,
                    itemBuilder: (context, index) {
                      final Abjad abjad = abjadList[index];
                      return AbjadTile(
                        abjad: abjad.abjad,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AbjadScreen(
                                  abjad: abjad,
                                );
                              },
                            ),
                          );
                        },
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
