import 'package:flutter/material.dart';
import 'package:instagram_app/constants/constants.dart';
import 'package:instagram_app/screens/home/home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: bgColor,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
      home: const HomeScreen(),
    );
  }
}
