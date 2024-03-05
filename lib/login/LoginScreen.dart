import 'package:datingapp/login/login_screen.dart';
import 'package:datingapp/login/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset("assets/images/login.png"),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyRegister()),
              );
            }, child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 17),),style: ElevatedButton.styleFrom(
              minimumSize: Size(327, 50),
              backgroundColor: Colors.redAccent,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50)
                )
              )
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin()),
              );
            }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 17),),style: ElevatedButton.styleFrom(
                minimumSize: Size(327, 50),
                backgroundColor: Colors.redAccent,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    )
                )
            ),),
          )

        ],
      ),
    );
  }
}
