import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenu extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const ButtonMenu({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0x25000000),
        ),
        child: Text(
          title,
          style: GoogleFonts.schoolbell(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
