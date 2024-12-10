import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return LandingPageMobile();
        } else {
          return LandingPageWeb();
        }
      }),
    );
  }
}
