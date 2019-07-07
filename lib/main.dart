import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cfnews/assets.dart';
import 'package:cfnews/injection_container.dart';
import 'package:cfnews/main_page.dart';

void main() {
//  debugPaintLayerBordersEnabled = true;
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringAssets.applicationName,
      theme: Theme.of(context).copyWith(
        canvasColor: Colors.black45,
        primaryColor: const Color(ColorsAssets.BLEUMARIN),
        accentColor: const Color(ColorsAssets.PORTOCALIU),
        scaffoldBackgroundColor: Color(0x6BFFFFFF),
      ),
//      ThemeData(
//        primaryColor: const Color(ColorsAssets.BLEUMARIN),
//        accentColor: const Color(ColorsAssets.PORTOCALIU),
//        scaffoldBackgroundColor: Colors.white30,
//        backgroundColor: Colors.transparent,
//      ),
      home: MainPage(),
    );
  }
}