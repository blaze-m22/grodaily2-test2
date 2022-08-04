import 'package:flutter/material.dart';

class BeveragesPage extends StatefulWidget {
  @override
  _BeveragesPageState createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leadingWidth: 40,
        backgroundColor: Color(0xFF009743),
        title: Text(
          "Beverages",
          style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // search
            },
          ),
        ],
      ),
      body: Beverages(),
    );
  }
}

class Beverages extends StatefulWidget {
  @override
  _BeveragesState createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  var bevs = [
    {
      "name": "Oreo Jumbo Pack",
      "image":
          "https://www.jiomart.com/images/product/150x150/590110608/cadbury-oreo-original-vanilla-creme-cookies-jumbo-pack-500-g-0-20201201.jpg",
      "description": "Vanilla Creme Cookies",
      "price": 90,
      "qty": 500,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: bevs.length,
      itemBuilder: (context, index) {
        return Bvgs(
          bevsname: bevs[index]["name"],
          bevsimage: bevs[index]["image"],
          bevsdescription: bevs[index]["description"],
          bevsprice: bevs[index]["price"],
          bevsqty: bevs[index]["qty"],
        );
      },
    );
  }
}

class Bvgs extends StatelessWidget {
  final bevsname;
  final bevsimage;
  final bevsdescription;
  final bevsprice;
  final bevsqty;

  const Bvgs({
    this.bevsname,
    this.bevsimage,
    this.bevsdescription,
    this.bevsprice,
    this.bevsqty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.network(bevsimage, fit: BoxFit.contain),
        title: Text(bevsname),
        subtitle: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
                Padding(padding: EdgeInsets.all(4),
                child: Text(bevsdescription),
                ),
                Padding(padding: EdgeInsets.all(4),
                child: Text("\ $bevsqty ml"),
                ),
              ],
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text("\₹$bevsprice",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
              ),
            ),
            Row(
              children: <Widget> [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 100,
                    height: 20,
                  child: Text("Add to Cart", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    ),
                  ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}