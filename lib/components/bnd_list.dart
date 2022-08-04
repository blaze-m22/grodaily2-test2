import 'package:flutter/material.dart';

class BandD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/590108360/sugar-m-2-kg-0-20210316.jpg',
            imagecaption: 'Bread & Eggs'
          ),
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/490000073/tata-iodised-salt-1-kg-0-20201231.jpg',
            imagecaption: 'Cereal & Mixes'
          ),
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/491127282/britannia-100-whole-wheat-bread-450-g-0-20210702.jpg',
            imagecaption: 'Butter& Cheese'
          ),
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/490000038/aashirvaad-whole-wheat-atta-5-kg-0-20210604.jpg',
            imagecaption: 'Jams & Spreads'
          ),
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/490005638/daawat-rozana-gold-basmati-rice-5-kg-0-20210414.jpg',
            imagecaption: 'Batter'
          ),
          Category(
            imagelocation: 'https://www.jiomart.com/images/product/420x420/490884029/lion-desert-king-dates-500-g-0-20200805.jpg',
            imagecaption: 'Chocos'
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
    return Padding(padding: const EdgeInsets.all(10),
    child: InkWell(onTap: (){},
    child: Container(
      decoration:
       BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(7)),
           color: Colors.white,
           border: Border.all(
           color: Colors.white54,
           width: 1,
           ),
          
           boxShadow: [
             BoxShadow(
               color: Colors.grey,
               spreadRadius: 0.1,
               blurRadius:5,
               offset: Offset(0,0),
             )
           ],
           
          ),
          
    width: 100,
     child: ListTile(
      title: Image.network(
      imagelocation,
      width: 100,
      height: 80,
      ),
      subtitle: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(10),
        child: Text(imagecaption,
        style: TextStyle(fontSize: 13,
        color: Colors.black),
          ),
        ),
      ),
    ),
    ),
    );
  }
}