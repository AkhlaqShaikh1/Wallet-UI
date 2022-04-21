import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.color,
    required this.imgSrc,
    required this.title,
    required this.balance,
    required this.price,
    required this.trend,
    required this.titleColor,
    required this.iconColor,
    required this.subtitleColor,
  }) : super(key: key);
  final Color color;
  final String imgSrc;
  final String title;
  final String balance;
  final String price;
  final String trend;
  final Color titleColor;
  final Color iconColor;
  final Color? subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              offset: const Offset(-2, -2),
              spreadRadius: 4,
              color: color,
            )
          ]),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/icons/$imgSrc.png",
                    height: 35,
                    color: iconColor,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: titleColor,
                  fontFamily: GoogleFonts.secularOne().fontFamily,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                balance,
                style: TextStyle(
                  color: subtitleColor,
                  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(flex: 3),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "\$" + price,
                style: TextStyle(
                    color: subtitleColor,
                    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                    fontSize: 17,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 4),
              Text(
                trend,
                style: TextStyle(
                  color: subtitleColor,
                  fontFamily: GoogleFonts.secularOne().fontFamily,
                  fontSize: 13,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
