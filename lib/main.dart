import 'package:flutter/material.dart';
import 'package:rika/onbording/onbording_screen.dart';
import 'package:rika/screens/Language_screen.dart';
import 'package:rika/screens/chat_detail_screen.dart';
import 'package:rika/screens/lanush_screen.dart';
import 'package:rika/screens/login_screen.dart';
import 'package:rika/screens/main_screen.dart';
import 'package:rika/screens/messages_list_screen.dart';
import 'package:rika/screens/setting.dart';
import 'package:rika/screens/signup_screen.dart';
import 'package:rika/screens/splash_screen.dart';
import 'package:rika/screens/successfull_login_screen.dart';

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
        '/onbording_screen': (context) => const Onbording(),
        '/splash_screen': (context) => const SplashScreen(),
        '/login_screen': (context) => const LogInScreen(),
        '/signup_screen': (context) => const SignUp(),
        '/successful_screen': (context) => const Successfull(),
        '/main_screen': (context) => const MainScreen(),
        '/setting_screen': (context) => const SettingScreen(),
        '/chat_screen': (context) => const ChatDetailPage(),
        '/messege_list_screen': (context) => const HomePage(),
        '/language_screen': (context) => const LanguageScreen(),
      },
    );
  }
}
