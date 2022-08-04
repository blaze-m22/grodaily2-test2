import 'package:flutter/material.dart';

import '../product_datails.dart';

class BnCPage extends StatefulWidget {
  @override
  _BnCPageState createState() => _BnCPageState();
}

class _BnCPageState extends State<BnCPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F7FA),
      appBar: new AppBar(
        leadingWidth: 40,
        toolbarHeight: 70,
        backgroundColor: Color(0xFF009743),
        title: Text(
          "Biscuits and Cookies",
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
      body: BnC(),
    );
  }
}

class BnC extends StatefulWidget {
  @override
  _BnCState createState() => _BnCState();
}

class _BnCState extends State<BnC> {
  var bncs = [
    {
      "name": "Oreo Jumbo Pack",
      "image":
          "https://www.jiomart.com/images/product/150x150/590110608/cadbury-oreo-original-vanilla-creme-cookies-jumbo-pack-500-g-0-20201201.jpg",
      "description": "Vanilla Creme Cookies",
      "price": 90,
      "qty": 500,
      "unit": "gms",
    },
    {
      "name": "Oreo",
      "image":
          "https://www.jiomart.com/images/product/150x150/491338266/cadbury-oreo-original-vanilla-creme-biscuits-120-g-0-20210304.jpg",
      "description": "Vanilla Creme Cookies",
      "price": 27,
      "qty": 120,
      "unit": "gms",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: bncs.length,
      itemBuilder: (context, index) {
        return BandC(
          bncname: bncs[index]["name"],
          bncimage: bncs[index]["image"],
          bncdescription: bncs[index]["description"],
          bncprice: bncs[index]["price"],
          bncqty: bncs[index]["qty"],
          bncunit: bncs[index]["unit"],
        );
      },
    );
  }
}

class BandC extends StatelessWidget {
  final bncname;
  final bncimage;
  final bncdescription;
  final bncprice;
  final bncqty;
  final bncunit;

  const BandC({
    this.bncname,
    this.bncimage,
    this.bncdescription,
    this.bncprice,
    this.bncqty,
    this.bncunit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => ProductDetailScreen(
                    pdetailname: bncname,
                    pdetailimage: bncimage,
                    pdetaildescription: bncdescription,
                    pdetailprice: bncprice,
                    pdetailqty: bncqty,
                    pdetailunit: bncunit,
                  ))),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Image.network(bncimage, fit: BoxFit.contain),
            title: Text(bncname),
            subtitle: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(bncdescription),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text("\ $bncqty $bncunit"),
                    ),
                  ],
                ),
                Row(children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "\₹$bncprice",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(padding: EdgeInsets.all(2)),
                  ),
                  InkWell(
                    child: Container(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        padding: EdgeInsets.only(
                            top: 7, bottom: 7, left: 13, right: 13),
                        margin: EdgeInsets.only(top: 22, right: 2),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                            color: Color(0xFF009743),
                          ),
                          borderRadius: BorderRadius.circular(7),
                        )),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
