import 'package:flutter/material.dart';
import 'package:grodaily2/products/categories/bnc.dart';

class Hlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1uQQUFSYrsfOIDD7puHmncC_gOoqlmetB',
              imagecaption: 'Soaps'
          ),
          InkWell(
            child: Category(
              imagelocation: 'https://drive.google.com/uc?export=view&id=1-pnIKgWKbucRrk8UwdY7bXVLV3xl1pb5',
              imagecaption: 'Biscuits'
            ),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => BnCPage()),
              ),
          ),
          Category(
            imagelocation: 'https://drive.google.com/uc?export=view&id=1K95ruU_36PRntncPOjbe9B2-jEhCwYGn',
            imagecaption: 'Pulses'
          ),
          Category(
            imagelocation: 'https://drive.google.com/uc?export=view&id=1xpZGLTcin521CcYh4f3i2zqWEkzBrTuc',
            imagecaption: 'Oils'
          ),
          Category(
            imagelocation: 'https://drive.google.com/uc?export=view&id=1F_vKCNuoME_AHpvX_B4Xqdi9smbazcok',
            imagecaption: 'Powders'
          ),
          Category(
            imagelocation: 'https://drive.google.com/uc?export=view&id=13-LFDxjZBgbafmYUCP7nBbuzYoYqKD6q',
            imagecaption: 'Toothpaste'
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({
    required this.imagelocation,
    required this.imagecaption,
  });

  @override
  Widget build(BuildContext context) {    
    return Padding(padding: EdgeInsets.all(2),
    child: InkWell(
    child: Container(
      decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(60)),
           color: Colors.white,
           border: Border.all(
           color: Colors.black45,
           width: 0.8,
           )
          ),
          
    width: 90,
     child: ListTile(
      title: Image.network(
      imagelocation,
      width: 100,
      height: 60,
      ),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(imagecaption,
        style: TextStyle(fontSize: 10,
        color: Colors.black),
          ),
        ),
      ),
    ),
    ),
    );
  }
}
