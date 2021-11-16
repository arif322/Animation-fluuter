import 'package:animation_photo/ImagePage/images.dart';

import 'package:animation_photo/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.path,
      routes: {
        HomePage.path: (context) => HomePage(),
        ImagePage.path: (context) => ImagePage()
      },
    );
  }
}
