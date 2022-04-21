import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({
    required this.balance,
    Key? key,
  }) : super(key: key);
  final String balance;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 80,
      child: Text(
        "\$55,849.20",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 40,
          letterSpacing: 3,
          fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
        ),
      ),
    );
  }
}