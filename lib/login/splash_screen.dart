import 'package:datingapp/login/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: HexColor('#ec5858'),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60,bottom: 20),
                child: Text("Dating App",style: TextStyle(fontSize: 46,fontWeight: FontWeight.w500,color: Colors.redAccent),)),
            Container(
              margin: EdgeInsets.only(bottom: 0),
                child: Text("Find your perfect match !! Join us and socialize with millions of people",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.redAccent),)),
            Image.asset("assets/images/cupid2.png",width: 300,),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }, child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 17),),style: ElevatedButton.styleFrom(
                  minimumSize: Size(327, 50),
                  backgroundColor: HexColor('#1e212d'),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)
                      )
                  )
              ),),
            ),

            // Stack(
            //   children: [
            //     Positioned(
            //       top: -100, // Adjust this value to control the position of the semi-circle
            //       left: -100, // Adjust this value to control the position of the semi-circle
            //       child: Container(
            //         width: 400,
            //         height: 400,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(400),
            //           color: Colors.white.withOpacity(0.1),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: 400,
            //       height: 400,
            //       padding: const EdgeInsets.all(0),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(400),
            //         color: Colors.white.withOpacity(0.1),
            //       ),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(top: 40,left: 60),
            //         child: Image.asset("assets/images/circle1.png",width: 72,)),
            //     Container(
            //       margin: EdgeInsets.only(top: 140,left: 150),
            //         child: Image.asset("assets/images/heart.png",width: 60,)),
            //     Container(
            //         margin: EdgeInsets.only(top: 100,left: 320),
            //         child: Image.asset("assets/images/circle2.png",width: 60,)),
            //     Container(
            //         margin: EdgeInsets.only(top: 270,left: 85),
            //         child: Image.asset("assets/images/circle3.png",width: 60,)),
            //     Container(
            //         margin: EdgeInsets.only(top: 270,left: 250),
            //         child: Image.asset("assets/images/hand.png",width: 60,))
            //   ],
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 30,left: 10),
            //     child: Text("Dating App",textAlign: TextAlign.start,style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w600),)),
            // Text("Find Your\nPerfect Match !!",textAlign: TextAlign.start,style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w300),),

            // GestureDetector(
            //   onTap: () => print('Do Something'),
            //   child: CustomPaint(
            //     size: Size(200, 50),
            //     painter: CurvePainter(),
            //   ),
            // ),
            GestureDetector(
              onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            );
            },
              child: Container(
                margin: EdgeInsets.only(top: 30,left: 255),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = HexColor('#1e212d')
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width*0.2, 0)
      ..lineTo(size.width, size.height*0.2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
