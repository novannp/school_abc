import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AbjadTile extends StatelessWidget {
  final String abjad;
  final Function() onPressed;
  const AbjadTile({Key? key, required this.abjad, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0x25000000),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          abjad,
          style: GoogleFonts.poppins(
            fontSize: deviceWidth <= 360 ? 30 : 40,
            color: Colors.white,
            letterSpacing: deviceWidth <= 360 ? 10 : 14,
          ),
        ),
      ),
    );
  }
}
