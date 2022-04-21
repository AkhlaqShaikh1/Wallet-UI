import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/wallet_widgets/total_balance.dart';
import '../widgets/wallet_widgets/wallet_card.dart';
import '../widgets/wallet_widgets/walley_app_bar.dart';

// ignore: must_be_immutable
class WalletPage extends StatelessWidget {
  WalletPage({Key? key}) : super(key: key);
  double topContainer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0b0c),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SafeArea(
          child: Column(
            children: [
              const WalletAppBar(),
              const SizedBox(height: 15),
              const TotalBalance(balance: "55,849.20"),
              const SizedBox(height: 25),
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                child: Text(
                  "My Wallets",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Align(
                      heightFactor: 0.7,
                      alignment: Alignment.topCenter,
                      child: WalletCard(
                        color: Color(0xfffa8b49),
                        balance: "4.22 BTC",
                        iconColor: Colors.black,
                        imgSrc: "bitcoin-2",
                        price: "14.20",
                        subtitleColor: Color(0xff3f2414),
                        title: "Bitcoin",
                        titleColor: Colors.black,
                        trend: "+1.68 (198)",
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      heightFactor: 0.8,
                      alignment: Alignment.topCenter,
                      child: WalletCard(
                        color: Color(0xff4854c7),
                        balance: "3.56 ETH",
                        iconColor: Colors.white,
                        imgSrc: "etherium",
                        price: "9.49",
                        subtitleColor: Colors.white,
                        title: "Ethereum",
                        titleColor: Colors.white,
                        trend: "+4.36 (267)",
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      heightFactor: 0.7,
                      alignment: Alignment.topCenter,
                      child: WalletCard(
                        color: const Color(0xffcccbf4),
                        balance: "5.14 DGB",
                        iconColor: Colors.black,
                        imgSrc: "digibyte",
                        price: "23.65",
                        subtitleColor: Colors.grey[900],
                        title: "DigiByte",
                        titleColor: Colors.black,
                        trend: "+275 (495)",
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      heightFactor: 0.7,
                      alignment: Alignment.topCenter,
                      child: WalletCard(
                        color: Color(0xff000000),
                        balance: "2.73 LTC",
                        iconColor: Colors.white,
                        imgSrc: "litecoin",
                        price: "43.32",
                        subtitleColor: Colors.white,
                        title: "LiteCoin",
                        titleColor: Colors.white,
                        trend: "+1.45 (345)",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
