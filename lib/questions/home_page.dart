import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz/constants/Constans.dart';
import 'package:quiz/data/Question.dart';
import 'package:quiz/screens/result_screen.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int showmQuestionIndex = 0;
  int showQuestionNumber = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[showmQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[showmQuestionIndex].imageNameNumber!;
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
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Text(
                  getQuestionsList()[showQuestionNumber].numberQuestion!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
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
                  selectedQuestion!.questionTitle!,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                ////////////////
                ////////////////
                SizedBox(height: 30),
                ///////////////
                ///////////////
                Image(
                  image: AssetImage('assets/images/$questionImageIndex.png'),
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 30),
                ...List.generate(4, (index) => getOptionsItem(index)),
                if (isFinalAnswerSumbited)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ResultScreen(correctAnswer: correctAnswer),
                        ),
                      );
                    },
                    child: Text(
                      'مشاهده نتایج کوییز',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'QT',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      minimumSize: Size(200.0, 40.0),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
        style: TextStyle(
          fontFamily: 'QT',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        setState(
          () {
            if (selectedQuestion!.correctAnswer == index) {
              correctAnswer++;
            } else {
              print('wrong');
            }

            if (showmQuestionIndex == getQuestionsList().length - 1) {
              isFinalAnswerSumbited = true;
            }

            setState(
              () {
                if (showmQuestionIndex < getQuestionsList().length - 1) {
                  showmQuestionIndex = showmQuestionIndex + 1;
                  showQuestionNumber = showQuestionNumber + 1;
                }
              },
            );
          },
        );
      },
    );
  }
}
