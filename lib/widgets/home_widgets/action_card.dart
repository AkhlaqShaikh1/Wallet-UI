import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    Key? key,
    required this.title,
    required this.color,
    required this.imgSrc,
  }) : super(key: key);
  final String title;
  final Color color;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,

                // padding: const EdgeInsets.only(top: 7),
                child: Image.asset(
                  imgSrc,
                  height: 60,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
