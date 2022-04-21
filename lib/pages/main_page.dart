import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/home_widgets/action_card.dart';
import '../widgets/home_widgets/balance_card.dart';
import '../widgets/home_widgets/home_app_bar.dart';
import '../widgets/home_widgets/mover_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              const SizedBox(height: 20),
              const BalanceCard(),
              const SizedBox(height: 10),
              Text(
                "Actions",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              const SizedBox(height: 10),
              _buildActionCards(),
              const SizedBox(height: 10),
              Text(
                "Top Movers",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                ),
              ),
              _buildMover(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildMover() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MoverCard(
          coin: "BTC",
          color: Colors.blue[600]!,
          price: "21.58",
          title: '+ 34.98%',
        ),
        MoverCard(
          coin: "Chain",
          color: Colors.orange[200]!,
          price: "34.90",
          title: '+ 54.13%',
        ),
      ],
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
