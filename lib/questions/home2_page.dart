import 'package:flutter/material.dart';

class HomeWidget2 extends StatelessWidget {
  const HomeWidget2({super.key});

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
                Colors.indigo,
                Color(0xff8DCBE6),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'کوییز مهدوی',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'QT',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(5.0, 3.0),
                  blurRadius: 10.0,
                  color: Color.fromARGB(255, 41, 101, 125),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
            ),
            //////////////////
            //////////////////
            SizedBox(height: 20),
            /////////////////
            /////////////////

            Text(
              '2/10',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.8),
                fontFamily: 'QT',
                fontSize: 40,
              ),
            ),
            ////////////////////
            ////////////////////
            SizedBox(height: 10),
            ////////////////////
            ////////////////////
            Text(
              'علت اصلی غیبت امام زمان (عج) چه بود؟',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'QT',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ////////////////
            ////////////////
            SizedBox(height: 30),
            ///////////////
            ///////////////
            Image(
              image: AssetImage('assets/images/2.png'),
              width: 250,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
