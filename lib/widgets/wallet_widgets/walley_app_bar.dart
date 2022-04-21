import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletAppBar extends StatelessWidget {
  const WalletAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total Balance",
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 18,
            fontFamily: GoogleFonts.secularOne().fontFamily,
          ),
        ),
        Image.asset(
          "assets/icons/option.png",
          height: 20,
          color: Colors.white,
        ),
      ],
    );
  }
}
