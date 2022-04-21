import 'package:flutter/material.dart';

import 'package:wallet_ui/pages/home_page.dart';

import '../../pages/wallet_page.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int pageIndex = 0;
  // bool isSelected = false;
  Color selectedColor = Colors.orange;
  Color notSelectedColor = Colors.white;

  // _MyBottomAppBarState(BuildContext context, int index);

  @override
  Widget build(BuildContext context) {
    // print("Bottom Nav Bar");
    return Container();
  }
}
