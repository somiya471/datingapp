import 'package:flutter/material.dart';

class MatchPage extends StatefulWidget {

  @override
  _MatchPageState createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            end: const Alignment(0.0, 0.4),
            begin: const Alignment(0.0, -1),
            colors: <Color>[
              Colors.pink,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            Text(
              "It's a match!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            Text(
              "You and Daniel have liked each other.",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 16,
              ),
            ),
            SizedBox(height: 44),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 86,
                      width: 86,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Container(
                          height: 78,
                          width: 78,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/daniel_1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 32),
                    Container(
                      height: 86,
                      width: 86,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Container(
                          height: 78,
                          width: 78,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/kathryn_1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 86,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        child: Stack(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: Colors.green[300],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                              ),
                              child: Container(
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 46,
                                width: 46,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                '9.2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  "Message him",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 64),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(100),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Center(
                  child: Text(
                    "Keep searching",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}