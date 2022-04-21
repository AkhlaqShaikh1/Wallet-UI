import 'package:flutter/material.dart';
import 'package:wallet_ui/pages/wallet_page.dart';

import 'pages/home_page.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet Demo',
      theme: ThemeData(brightness: Brightness.dark),
      // home: const HomePage(),
      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/wallet": (context) =>  WalletPage(),
        "/main": (context) => const MainPage(),
      },
    );
  }
}
