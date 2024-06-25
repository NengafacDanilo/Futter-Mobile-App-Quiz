import 'dart:async';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int position=0;
  PageController controller =PageController(initialPage:0);

  Timer? _timer;
  int _currentPage = 0;
  final int _totalPages = 3;

    @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _totalPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Examen'),
        // ),
        body: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 40,
                        
                      ),
                      onPressed: (){}
                       
                    ),
                    const Text(
                      'Quiz',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const Text(
                      'RECENT',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 20, 2, 2),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      alignment: Alignment.bottomCenter,
                      height: 40,
                      width: 40,
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        double? current=controller.page;
                      double newCurrent=current! + 1;
                     print(newCurrent);
                      controller.animateToPage(newCurrent.toInt(), duration:const Duration(seconds: 1), curve: Curves.easeInOut);  
                                             // controller.animateToPage(1, duration:const Duration(seconds: 1), curve: Curves.easeInOut);                    
                        },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                        alignment: Alignment.bottomCenter,
                        height: 40,
                        width: 40,
                        child: const Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // const Icon(Icons.navigate_next, size:40),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              // Image.asset('assets/biologly.gif'),
              Expanded(
                child: PageView(
                  controller: controller,
                  children: [
                  Image.asset('assets/pic3.jpg'),
                  Image.asset('assets/english.png'),
                  Image.asset('assets/pic1.gif'),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}


