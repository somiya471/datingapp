import 'package:datingapp/home/match_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MatchScreen extends StatelessWidget {
  MatchScreen({Key? key}) : super(key: key);

  final List<Widget> gridviewwidget = [
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      child: Text("One"),
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.green,
      child: Text("Two"),
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.pinkAccent,
      child: Text("Three"),
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.purple,
      child: Text("Four"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: 6,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Body()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "lib/images/${index + 1}_image.jpg",
                  fit: BoxFit.cover, // Use BoxFit.cover to make the image cover the whole space
                )
              ),
            ),
          ),
        ),
      ),
      //   StaggeredGridView.countBuilder(
      //     padding:
      //     const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
      //     crossAxisCount: 4,
      //     itemCount: givingList.length,
      //     itemBuilder: (context, j) {
      //       return new Material(
      //         elevation: 8.0,
      //         borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
      //         child: ClipRRect(
      //             borderRadius: new BorderRadius.circular(8.0),
      //             child: Stack(
      //               children: <Widget>[
      //                 Positioned(
      //                     bottom: 0,
      //                     left: 0,
      //                     right: 0,
      //                     child: Container(
      //                       height: 60,
      //                       child: RaisedGradientButton(
      //                           child: Text(
      //                             'Make as Given Away',
      //                             style: TextStyle(
      //                               color: Colors.white,
      //                               fontSize: 12,
      //                             ),
      //                           ),
      //                           gradient: LinearGradient(
      //                             colors: <Color>[
      //                               Color.fromARGB(255, 17, 153, 142),
      //                               Color.fromARGB(255, 56, 239, 125)
      //                             ],
      //                           ),
      //                           onPressed: () {
      //
      //                           }),
      //                     )),
      //               ],
      //             )),
      //       );
      //     },
      //     staggeredTileBuilder: (j) =>
      //     new StaggeredTile.fit(2),
      //     mainAxisSpacing: 10.0,
      //     crossAxisSpacing: 10.0,
      //   );
    );
  }
}
