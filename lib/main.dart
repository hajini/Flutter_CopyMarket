import 'package:carrot_market_ui/screens/main_screens.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';


// test for Git commit & push
// 1 more line


void main() {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}

