import 'package:flutter/material.dart';
import 'package:grodaily2/components/carousel.dart';
import 'package:grodaily2/components/h_list.dart';
import 'package:grodaily2/components/biglist.dart';
import 'package:grodaily2/components/bnd_list.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

// Image Carousel
          Carousel1(),
/*
          CarouselSlider(
            options: CarouselOptions(height: 150.0),
            items: [
              Image.network("https://drive.google.com/uc?export=view&id=1WlhQKiv9MRV3uiW4lsf9d8tO2sW1jkZD"),
              Image.network("https://drive.google.com/uc?export=view&id=1WlhQKiv9MRV3uiW4lsf9d8tO2sW1jkZD"),
              Image.network("https://drive.google.com/uc?export=view&id=1WlhQKiv9MRV3uiW4lsf9d8tO2sW1jkZD"),
              Image.network("https://drive.google.com/uc?export=view&id=1WlhQKiv9MRV3uiW4lsf9d8tO2sW1jkZD"),
              Image.network("https://drive.google.com/uc?export=view&id=1WlhQKiv9MRV3uiW4lsf9d8tO2sW1jkZD"),
              ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber
                      ),
                    child: Image.network('$i', fit: BoxFit.contain,),
                  );
                },
              );
            }).toList(),
          ),
*/
/*
// gif image
          Image.network(
            "https://media.giphy.com/media/JsDWHO2Rwgq2TWaZuN/giphy.gif?cid=790b76115c65055148f8d6bb6c19842f653bfed8afab3007&rid=giphy.gif&ct=g",
            height: 180,
            fit: BoxFit.cover,
          ),
*/
// padding
          new Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              "Daily Essentials",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 14,
              ),
            ),
          ),
// Horizontal list
          Hlist(),
// Padding
          new Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              "Buy in Bulk",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Raleway'),
            ),
          ),
// Category Products 1
          Biglist(),
// Padding
          new Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              "Breakfast & Dairy",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Raleway'),
            ),
          ),
// B&D image
          new Container(
            child: Image.network(
                "https://drive.google.com/uc?export=view&id=18Zvzf1U8jTtNAX2jvHmbfPoimYQXv5q_",
                fit: BoxFit.cover),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),

// B&D list
          BandD(),
// Padding
          new Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              "Noodles & Instant food",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
// N&If image
          new Container(
            child: Image.network(
                "https://drive.google.com/uc?export=view&id=1doxWFjiKHiJHTZAxl3KD5T2fGlE-J9fp",
                height: 140,
                fit: BoxFit.fill),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
          ),
// N&If list

// Padding
          new Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              "Snacks? We've got that covered",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),            ),
          ),
// Snacks Image
          new ClipRRect(
            child: Image.network(
                "https://drive.google.com/uc?export=view&id=1GgUaQNmNaY2h2oRqgBECQZzJ4I6MnV8G",
                height: 140,
                fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
// Snacks list
        ],
      ),
    );
  }
}