import 'package:flutter/material.dart';
import 'package:grodaily2/account/signin.dart';
import 'package:grodaily2/account/signup.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: new Text(
                "Welcome to Grodaily",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 22,
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                  );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 13),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.green.shade100,
                          offset: Offset(0, 0),
                          blurRadius: 8,
                          spreadRadius: 1)
                    ],
                    color: Colors.white),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF009743),
                      ),
                    ),
                    ),
            ),
            
            
            Padding(padding: EdgeInsets.all(12)),
            
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateAccount()),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.green.shade100,
                        offset: Offset(0, 0),
                        blurRadius: 8,
                        spreadRadius: 1),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color(0xFF009743), width: 1),
                ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20, color: Color(0xFF009743)),
                  ),
              ),
            ),
          ],
        ),
    );
  }
}
