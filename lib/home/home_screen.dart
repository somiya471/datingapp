import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:datingapp/home/match_screen.dart';
import 'package:datingapp/home/profile_screen.dart';
import 'package:datingapp/home/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final pages = [
    MatchScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
    color: Colors.blueGrey,
    onPressed: (){},
    ),
    title: Container(
      margin: EdgeInsets.only(left: 60),
    child: Text(
    "Dating App",
    style: TextStyle(
    color: Colors.redAccent[900],
    fontSize: 22,
    fontWeight: FontWeight.w600,
    ),
    ),
    ),
        ),
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.redAccent,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          _navigateToPage(index);
        },
        items: [
          Icon(Icons.favorite),
          Icon(Icons.search),
          Icon(Icons.account_circle),
        ],
      ),
      body: pages[_currentIndex],
    );
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
    }

    // Update the current index
    setState(() {
      _currentIndex = index;
    });
  }
}


