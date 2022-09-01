import 'package:flutter/material.dart';
import 'package:rika/onbording/onbording_screen.dart';
import 'package:rika/screens/lanush_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lanuch_screen',
      routes: {
        '/lanuch_screen': (context) => const LanuchScreen(),
        '/onbording_screen': (context) => const  Onbording(),
      },
    );
  }
}
