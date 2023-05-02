import 'package:flutter/material.dart';

class AbouteMe extends StatelessWidget {
  const AbouteMe({super.key});

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
                Colors.blue.shade800,
                Colors.indigo,
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'درباره من',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'QT',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  offset: Offset(0.5, 7.0),
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
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/my.png'),
                  width: double.nan,
                  height: double.infinity,
                  // height: double.infinity,
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  left: 75,
                  top: 550,
                  child: Text(
                    'طراح اپلیکیشن: امیر خسروی',
                    style: TextStyle(
                      color: Color.fromARGB(255, 81, 147, 202),
                      fontFamily: 'QT',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Colors.blueAccent,
                          blurRadius: 15,
                          offset: Offset(0.5, 7.0),
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
