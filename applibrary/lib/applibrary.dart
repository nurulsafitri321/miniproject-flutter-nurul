import 'dart:async';

import 'package:applibrary/authentication/login.dart';
import 'package:applibrary/screens/screesns_w.dart';
import 'package:applibrary/screens/view/summary.dart';
import 'package:applibrary/themes/theme.dart';
import 'package:flutter/material.dart';



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
      title: 'Library',
      theme: customTheme,
      routes: {
        '/login': (context) => const LoginScreen(),
        '/summary': (context) => const Summary(),
      },
      home: const LoginScreen(),
    );
  }
}