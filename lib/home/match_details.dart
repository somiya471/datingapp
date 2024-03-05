import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size),
            TitleAndPrice(title: "Kelvin.D", country: "Mumbai University, Mumbai Art", price: 23),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 20/2),
                      width: size.width * 0.4,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/boy_1.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 20/2),
                      width: size.width * 0.4,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/boy2.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 20/2),
                      width: size.width * 0.4,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/boy3.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,bottom: 20/2),
                      width: size.width * 0.4,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/boy4.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              ),
            ),
    SizedBox(height: 20,),
    // Row(
    // children: [
    // SizedBox(
    // width: size.width/2,
    // height: 84,
    // child: TextButton(
    // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
    // shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))
    // ),
    // ),
    // ),
    // onPressed: (){}, child: Text(
    // "Buy Now",style: TextStyle(
    // color: Colors.white,
    // fontSize: 16
    // ),
    // ),
    // ),
    // ),
    // Expanded(
    // child: TextButton(
    // onPressed: (){},
    // child: Text("Description",style: TextStyle(color: Colors.black,fontSize: 16),),
    // ))
    // ],
    // ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  child: Text("I believe in living life to the fullest, savoring every bite and every bounce. If you're into spontaneous culinary escapades, shooting hoops under the stars, and savoring the beauty of the moment, I'd love to share this adventure with you. Let's cook up some memories together! ",style:Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: kTextColor)
                  ),
                ),
              ],
            ),
    SizedBox(height: kDefaultPadding*2,)
    ],
    ),
    ),
    );
  }
}