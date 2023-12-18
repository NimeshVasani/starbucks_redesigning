import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_redesigning/ui/screens/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  bool _isAtTop = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(milliseconds: 1)).then((value) => setState(() {
          _isAtTop = !_isAtTop;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006241),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Image.asset(
                    "assets/images/main_logo.png",
                    height: 280,
                    width: 250,
                    fit: BoxFit.contain,
                    colorBlendMode: BlendMode.color,
                    color: const Color(0xFF006241),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  curve: Curves.linear,
                  margin: EdgeInsets.only(
                    top: _isAtTop
                        ? MediaQuery.of(context).size.height * 0.1
                        : MediaQuery.of(context).size.height,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/cup_1.png',
                        height: 100,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/cup_2.png',
                        height: 180,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/cup_3.png',
                        height: 100,
                        width: 80,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  onEnd: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) {
                      return const MainScreen();
                    }));
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
