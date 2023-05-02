import 'package:flutter/material.dart';

import 'package:quiz/pages/aboute_me.dart';
import 'package:quiz/pages/questions.dart';
// import 'package:quiz/questions/home2_page.dart';
import 'package:quiz/questions/home_page.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            left: 75,
            top: 100,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/mosque 1.png',
                  width: 250,
                  height: 250,
                ),
              ],
            ),
          ),
          Positioned(
            left: 45,
            top: 275,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/11.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 70),
                Stack(
                  children: [
                    Positioned(
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xff9DF1DF), Color(0xff8DCBE6)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => HomeWidget(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: Text(
                                'شروع بازی',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'QT',
                                  fontSize: 30,
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
                          SizedBox(height: 50),
                          ////////////////
                          ////////////////
                          ////////////////
                          Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xff9DF1DF), Color(0xff8DCBE6)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => QuestionsScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: Text(
                                'سوالات متداول',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'QT',
                                  fontSize: 30,
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
                          SizedBox(height: 50),
                          //////////////
                          //////////////
                          //////////////
                          //////////////
                          Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xff9DF1DF), Color(0xff8DCBE6)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AbouteMe(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: Text(
                                'درباره ما',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'QT',
                                  fontSize: 30,
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
                          ///////////////
                          //////////////
                          /////////////
                          ////////////
                        ],
                      ),
                    ),
                  ],
                )
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
