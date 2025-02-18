import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_555/pages/start_page.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Select categories for learning language",
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: whiteTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),

              // Card
              CardWidget(level: "a1", title: "1-1000 words", percent: "80%"),

              // Subtitle

              // Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StartPage(),
                    ),
                  );
                },
                child: Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String level;
  final String title;
  final String percent;

  const CardWidget(
      {super.key,
      required this.level,
      required this.title,
      required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset("assets/$level.png", height: 40, width: 30),
          SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.barlow(
              fontSize: 20,
              color: whiteTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
