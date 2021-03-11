import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_destini/pages/pages.dart';
import 'package:flutter_destini/shared/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: primaryColor,
    ));
    return MaterialApp(
      title: 'Flutter Destini',
      theme: ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: primaryDarkColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: StoryPage(),
    );
  }
}
