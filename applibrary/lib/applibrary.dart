
// import 'package:applibrary/authentication/login.dart';
// import 'package:applibrary/screens/view/summary.dart';
// import 'package:applibrary/themes/theme.dart';
// import 'package:flutter/material.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Library',
//       theme: customTheme,
//       routes: {
//         '/login': (context) => const LoginScreen(),
//         '/summary': (context) => const Summary(),
//       },
//       home: const LoginScreen(),
//     );
//   }
// }


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
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _startDelayTimer();
  }

  void _startDelayTimer() {
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library',
      theme: customTheme,
      routes: {
        '/login': (context) => const LoginScreen(),
        
      },
      home: Scaffold( 
        body: _isLoading ? _buildLoadingScreen() : const ScreensWrapper(),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Center(
      child: Image.asset(
        'assets/bukuu.gif',
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}