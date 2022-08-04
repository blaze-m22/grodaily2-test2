import 'package:flutter/material.dart';
import 'package:grodaily2/products/categories/beverages.dart';
import 'package:grodaily2/products/categories/bnc.dart';
import 'package:grodaily2/products/categories/bnd.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, right: 0, bottom: 5),
            child: new Text(
              "All Categories",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),

          Image.asset("assets/images/categoriesscreen/bnd.png"),

          InkWell(
            child: Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1eaZJPMI52CSh56MDuAZ-932Hs0OFZDwH',
            ),
            onTap:  () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => BnCPage()),
            ),
          ),
          InkWell(
            child: Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1AO5octKzZVlnPiGuAHN1MJLHXZpN7e4A',
            ),
            onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => BnDPage()),
            ),
          ),
            InkWell(
              child: Category(
                imagelocation: 'https://drive.google.com/uc?export=view&id=1B3Elutqy80ZAzZE8nzV-C9YjT2IWDDaG',
              ),
              onTap: () => Navigator.push(context,
               MaterialPageRoute(builder: (context) => BeveragesPage()),
               ),
            ),
            Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1npBo0OKX2teRiJlTJ8lE8r61Mu26P5Ux',
            ),
            Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1Lwi4UPYo5oCFRbCGw7trOGpw_Gdw2JMm',
            ),
            Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1AO5octKzZVlnPiGuAHN1MJLHXZpN7e4A',
            ),
          ],
        ),
      
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;

  Category({
    required this.imagelocation,
  });

  @override
  Widget build(BuildContext context) {    
    return Padding(padding: EdgeInsets.only(left: 0, right: 0),
    child: Container(
            
      child: ListTile(
      title: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.network(
        imagelocation,
        ),
      ),
      ),
    ),
    );
  }
}