import 'dart:async';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:quiz/pages/selection_game.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    //secondes of wait for splash screen
    Timer(
      Duration(seconds: 7),
      () {
        //after 3 secondes
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SelectionScreen();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            left: 75,
            top: 300,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/mosque 1.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 20),
                Text(
                  'پرسش و پاسخ مهدوی',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 135,
            top: 800,
            child: Column(
              children: [
                Text(
                  'لطفا منتظر بمانید',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'QT',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 55,
            top: 700,
            child: Column(
              children: [
                Lottie.asset('assets/lottie/3.json', width: 300, height: 300)
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff9DF1DF),
            Color(0xffE3F6FF),
          ],
        ),
      ),
    );
  }
}
