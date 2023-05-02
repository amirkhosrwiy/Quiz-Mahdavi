import 'dart:ui';

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, this.correctAnswer = 0});
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.red.shade800,
                Color.fromARGB(255, 228, 100, 100),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'نتیجه آزمون',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'QT',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  offset: Offset(0.5, 1.0),
                  spreadRadius: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
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
            ),
            Column(
              children: [
                SizedBox(height: 75),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/cup.png'),
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'پاسخ های صحیح شما',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(0.5, 1.0),
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Text(
                  '$correctAnswer',
                  style: TextStyle(
                    color: Colors.amber,
                    fontFamily: 'QT',
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 101, 32),
                        blurRadius: 15,
                        offset: Offset(0.5, 1.0),
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
