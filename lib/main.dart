import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_555/pages/home_page.dart';

Color backgroundColor = Color(0xff14161B);
Color cardColor = Color(0xff313843);
Color checkboxColor = Color(0xff4D546B);
Color greyTextColor = Color(0xff616267);
Color whiteTextColor = Color(0xffFFFFFF);
Color buttonColor = Color(0xffF1CC06);
Color disabledButtonColor = Color(0xff564d15);
Color greyButtonColor = Color(0xff2D313F);
Color blackTextColor = Color(0xff14161B);

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
