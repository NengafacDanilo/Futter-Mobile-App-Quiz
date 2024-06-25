import 'package:flutter/material.dart';

import '/screens/quiz_screen.dart';
import '/screens/quiz_screenCSC.dart';
import '/screens/quiz_screenFr.dart';

import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_search_controller.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySearchPage(),
    );
  }
}

class MySearchPage extends StatefulWidget {
  const MySearchPage({super.key});

  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  final StandardSearchController _searchController = StandardSearchController();
  int score = 0;

  void _clearSearch() {
    setState(() {
      _searchController.clear();
    });
  }

  void _reloadPage() {
    // Implement the reload functionality here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: StandardSearchAnchor(
                searchBar: const StandardSearchBar(
                  bgColor: Colors.white,
                ),
                controller: _searchController,
                suggestions: const StandardSuggestions(
                  suggestions: [
                    StandardSuggestion(text: 'French'),
                    StandardSuggestion(text: 'ComputerScience'),
                    StandardSuggestion(text: 'English')
                  ],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _reloadPage,
            ),
          ],
        ),
      ),
      body:
       Container(
   
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                     const QuizScreen(
                                        // subject: 'eng',
                                      ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/english.png',
                              height: 200,
                              width: 400,
                            )
                          ),
                          const Text(
                            'English',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                     const QuizScreenCSC(
                                        // subject: 'fre',
                                      ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/Online test-pana.png',
                              height: 200,
                              width: 200,
                            )
                          ),
                           const Text(
                            'Computer',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                     const QuizScreenFr(
                                        // subject: 'eng',
                                      ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/Premium Vector _ Education school logo design.jpg',
                              height: 200,
                              width: 200,
                            ),
                          ),
                           const Text(
                            'French',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  // Expanded(
                  //   child: Column(
                  //     children: [
                  //       Image.network('https://via.placeholder.com/150'),
                  //       Image.network('https://via.placeholder.com/150'),
                  //       Image.network('https://via.placeholder.com/150'),
                  //     ],
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Column(
                  //     children: [
                  //       Image.network('https://via.placeholder.com/150'),
                  //       Image.network('https://via.placeholder.com/150'),
                  //       Image.network('https://via.placeholder.com/150'),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the next button functionality here.
                  },
                  child: const Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
