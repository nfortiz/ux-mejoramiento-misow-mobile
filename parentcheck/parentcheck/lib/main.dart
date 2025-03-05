import 'package:flutter/material.dart';
import 'package:parentcheck/components/historial_preview.dart';
import 'package:parentcheck/components/my_app_bar.dart';
import 'package:parentcheck/pages/login.dart';
import 'package:parentcheck/pages/my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parent Check',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 22.0, fontStyle: FontStyle.normal, color: Color(0xff5F5E5E)),
          headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xff171C1F)),
          bodyMedium: TextStyle(fontSize: 18.0),
          bodyLarge: TextStyle(fontSize: 14.0),
        ),
        primaryColorDark: Color(0xff08677F),
        primaryColorLight: Color(0xffBFECFF),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // '/': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => const MyHomePage(title: 'ParentCheck'),
      },
      home: const LoginPage(),
    );
  }
}
