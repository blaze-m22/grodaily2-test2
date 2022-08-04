import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text("LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF009743),
                fontSize: 32,
              ),
              textAlign: TextAlign.left,
              ),
            ),

          Padding(padding: EdgeInsets.all(5)),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: "E-mail"
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(5)),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password"
              ),
              obscureText: true,
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Text("Reset Password",
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
            ),
          ),

          SizedBox(height: 0.3),

          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF009743),
                  ),
                  padding: EdgeInsets.all(0),
                  child: Text("LOG IN", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                  ),
                ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Text("Dont have an account?",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: Colors.black45,
            ),
            ),
          ),

          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF009743),
                  ),
                  padding: EdgeInsets.all(0),
                  child: Text("CREATE ACCOUNT", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                  ),
                ),
            ),
          ),

          ],
        ),
    );
  }
}
