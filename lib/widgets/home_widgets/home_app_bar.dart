import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          child: Icon(
            Icons.person,
            color: Colors.grey[500],
          ),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Akhlaq,",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: 5),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                wordSpacing: 1.5,
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset(
            "assets/icons/notification.png",
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
