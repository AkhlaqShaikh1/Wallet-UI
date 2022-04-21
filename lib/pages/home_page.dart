import 'package:flutter/material.dart';
import 'package:wallet_ui/pages/main_page.dart';
import 'package:wallet_ui/pages/wallet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  Color selectedColor = Colors.orange;
  Color unselectedColor = Colors.white;

  List pages = [
    const MainPage(),
    WalletPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0b0c),
      body: pages[pageIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Container _buildBottomNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: _buildIcon("house", "Home", 0),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
                // Navigator.pushNamed(context, "/wallet");
              });
            },
            child: _buildIcon("wallet", "Wallet", 1),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            alignment: Alignment.center,
            height: 80,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.indigoAccent.shade700,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Image.asset(
              "assets/icons/double-arrow.png",
              height: 20,
              color: Colors.white,
            ),
          ),
          _buildIcon("trending", "Market", 2),
          _buildIcon("setting", "Setting", 3),
        ],
      ),
    );
  }

  Column _buildIcon(String imgSrc, String title, index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/icons/$imgSrc.png",
          color: index == pageIndex ? selectedColor : unselectedColor,
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
      ],
    );
  }
}
