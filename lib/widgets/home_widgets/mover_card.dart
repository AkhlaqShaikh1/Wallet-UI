import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoverCard extends StatelessWidget {
  const MoverCard({
    Key? key,
    required this.title,
    required this.coin,
    required this.price,
    required this.color,
  }) : super(key: key);
  final String title;
  final String coin;
  final String price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 180,
      // height: 70,
      decoration: BoxDecoration(
        color: const Color(0xff121215),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      coin,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "\$" + price,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/arrow-upward.png",
                  height: 20,
                  color: color,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
