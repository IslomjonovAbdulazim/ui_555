import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leadingWidth: 80,
        leading: Row(
          children: [
            SizedBox(width: 20),
            CupertinoButton(
              color: greyButtonColor,
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Image.asset(
                "assets/back.png",
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),

        // Title

        // Card

        // Subtitle

        // Button
      ),
    );
  }
}
