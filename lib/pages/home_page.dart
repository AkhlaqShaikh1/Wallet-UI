import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/home_widgets/action_card.dart';
import '../widgets/home_widgets/balance_card.dart';
import '../widgets/home_widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0b0c),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              const SizedBox(height: 30),
              const BalanceCard(),
              const SizedBox(height: 30),
              Text(
                "Actions",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(height: 20),
              _buildActionCards(),
            ],
          ),
        ),
      ),
    );
  }

  _buildActionCards() {
    return Wrap(
      spacing: 5,
      runSpacing: 15,
      children: [
        ActionCard(
          title: "Recieve",
          color: Colors.yellow[100]!,
          imgSrc: "assets/icons/bitcoin.png",
        ),
        const SizedBox(width: 10),
        ActionCard(
          title: "Send",
          color: Colors.orange[500]!,
          imgSrc: "assets/icons/credit.png",
        ),
        ActionCard(
          title: "Swap",
          color: Colors.purple[100]!,
          imgSrc: "assets/icons/exchange.png",
        ),
        const SizedBox(width: 10),
        ActionCard(
          title: "Earn",
          color: Colors.purple[300]!,
          imgSrc: "assets/icons/earn.png",
        ),
      ],
    );
  }
}
