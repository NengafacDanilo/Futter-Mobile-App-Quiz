import 'package:flutter/material.dart';

import '../models/english.dart';
// import '../models/csc.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });

  final int score;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 117, 117),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 1000),
          const Text(
            'YOUR SCORE: ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(125)),
                  // color: Color.fromARGB(255, 0, 3, 49),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 90, 90, 110),Color.fromARGB(255, 0, 1, 44),]
                  )
                ),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  value: score / 10,
                  color: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: Color.fromARGB(94, 19, 19, 19),
                ),
              ),
              Column(
                children: [
                  // const SizedBox(height: 5),
                  Text(
                    '${(score / questions.length * 100).round()}%',
                    style: const TextStyle(fontSize: 80),
                  ),
                  Text(
                    'CORRECT',
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'dashboard');
                  },
                  child: Text(
                    'Restart',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                    backgroundColor: Color.fromARGB(255, 1, 0, 54),
                    shadowColor: Colors.black,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}