import 'dart:convert';

import 'package:datingapp/home/detail_screen.dart';
import 'package:datingapp/login/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../login/login_model.dart';
import '../login/shared_pref.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String jsonString = '[{"name": "Daniel","age":"24","organization":"Mumbai University","club":"Mumbai Art Club","interests":"Shopping,Basketball,Movie,Books","desc":"Hey girls!U look beautiful today"}, '
        '{"name": "Rahul Verma","age":"24","organization":"Mumbai University","club":"Mumbai Art Club","interests":"Coffee,Basketball,Games,Travel","desc":"Hey girls!U look beautiful today"}, '
        '{"name": "Adrian Mathews","age":"26","organization":"University of California","club":"California Sports Club","interests":"Football,Basketball,Games","desc":"Hey girls!U look beautiful today"}, '
        '{"name": "Peter Parker","age":"23","organization":"Delhi University","club":"Delhi Art Club","interests":"Beer,Cricket,Movie","desc":"Hey girls!U look beautiful today"}]';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    LoginPageData loginPageData = LoginPageData();

    List<SearchFieldListItem<dynamic>> suggestions = [
      SearchFieldListItem<String>('Daniel'),
      SearchFieldListItem<String>('Rahul Verma'),

    ];


    // Future<void> loadSuggestionsFromJson() async {
    //   // Load your JSON list
    //   String jsonString = '[{"name": "Kelvin Park","age":"24","organization":"Mumbai University","club":"Mumbai Art Club","interests":"Shopping,Basketball,Movie,Books","desc":"Hey girls!U look beautiful today"}, '
    //       '{"name": "Rahul Verma","age":"24","organization":"Mumbai University","club":"Mumbai Art Club","interests":"Coffee,Basketball,Games,Travel","desc":"Hey girls!U look beautiful today"}, '
    //       '{"name": "Adrian Mathews","age":"26","organization":"University of California","club":"California Sports Club","interests":"Football,Basketball,Games","desc":"Hey girls!U look beautiful today"}, '
    //       '{"name": "Peter Parker","age":"23","organization":"Delhi University","club":"Delhi Art Club","interests":"Beer,Cricket,Movie","desc":"Hey girls!U look beautiful today"}]';
    //   List<dynamic> jsonList = json.decode(jsonString);
    //   LoginModel login = await loginPageData.getJsonData();
    //
    //   // Convert the JSON list to the required type
    //   List<SearchFieldListItem<dynamic>> suggestions_new = jsonList
    //       .where((jsonItem) => login.organization == jsonItem['organization'])
    //   .where((jsonItem) => login.club == jsonItem['club'])
    //       .map((jsonItem) {
    //     return SearchFieldListItem<String>(jsonItem['name']);
    //   }).toList();
    //
    //   suggestions = suggestions_new;
    //   print(suggestions);
    //
    // }
    //
    // @override
    // void initState() {
    //   super.initState();
    //   loadSuggestionsFromJson(); // Call your function here
    // }


    return SingleChildScrollView(
      child: Column(
        children: [
      Container(
      margin: EdgeInsets.only(bottom: 20.0 * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: HexColor('#faa3ab'),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'Hi Kathryn!',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: HexColor('#1e212d')
                    ),
                  ),
                  margin: EdgeInsets.only(left: 10),
                ),
                SizedBox(width: 10,),
                Text("Explore now ",style: TextStyle(
                  fontSize: 20,
                ),),
                Icon(Icons.favorite,color: Colors.redAccent,)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
            width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 10),
                    ),
                    ],
                    ),
                    child: SearchField(
                    hint: 'Search',
                    searchInputDecoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Colors.blueGrey.shade200,
                    width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue.withOpacity(0.8),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    maxSuggestionsInViewPort: 6,
                    itemHeight: 50,
                    suggestionsDecoration: SuggestionDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    onSuggestionTap: (value){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );

                    }, suggestions: suggestions,
                    ),
                    ),
          ),
        ],
      ),
    ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,bottom: 10),
                  child: Text("Similar Interests",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
  children: [
    Container(
      margin: EdgeInsets.only(left: 20,bottom: 20/2),
      width: size.width * 0.4,
      height: 180,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
            image: DecorationImage(image: AssetImage("assets/images/sports.jpg"),fit: BoxFit.cover)
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 20,bottom: 20/2),
      width: size.width * 0.4,
      height: 180,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
            image: DecorationImage(image: AssetImage("assets/images/travel.jpg"),fit: BoxFit.cover)
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 20,bottom: 20/2),
      width: size.width * 0.4,
      height: 180,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
            image: DecorationImage(image: AssetImage("assets/images/cooking.jpg"),fit: BoxFit.cover)
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 20,bottom: 20/2),
      width: size.width * 0.4,
      height: 180,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
            image: DecorationImage(image: AssetImage("assets/images/painting_interest.jpg"),fit: BoxFit.cover)
      ),
    ),
  ],
),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 5),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Football',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Siddharth Malhotra',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Cricket',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 5),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Basketball',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Swimming',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Varun Dhavi',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
