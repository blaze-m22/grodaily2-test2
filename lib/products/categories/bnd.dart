import 'package:flutter/material.dart';
import 'package:grodaily2/products/product_datails.dart';

class BnDPage extends StatefulWidget {
  @override
  _BnDPageState createState() => _BnDPageState();
}

class _BnDPageState extends State<BnDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leadingWidth: 40,
        backgroundColor: Color(0xFF009743),
        title: Text(
          "Breakfast & Dairy",
          style: TextStyle(color: Colors.white, fontFamily: 'Segoe'),
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
      body: BnD(),
    );
  }
}

class BnD extends StatefulWidget {
  @override
  _BnDState createState() => _BnDState();
}

class _BnDState extends State<BnD> {
  var bnds = [
    {
      "name": "Kellog's",
      "image":
          "https://www.jiomart.com/images/product/150x150/491409954/kellogg-s-nuts-delight-muesli-750-g-0-20210414.jpg",
      "description": "Nuts Delight Muesli",
      "price": 385,
      "qty": 750,
      "unit": "gm",
    },
    {
      "name": "Kellog's",
      "image":
          "https://www.jiomart.com/images/product/150x150/491409954/kellogg-s-nuts-delight-muesli-750-g-0-20210414.jpg",
      "description": "Nuts Delight Muesli",
      "price": 385,
      "qty": 750,
      "unit": "gm",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: bnds.length,
      itemBuilder: (context, index) {
        return BandD(
          bndname: bnds[index]["name"],
          bndimage: bnds[index]["image"],
          bnddescription: bnds[index]["description"],
          bndprice: bnds[index]["price"],
          bndqty: bnds[index]["qty"],
          bndunit: bnds[index]["unit"],
        );
      },
    );
  }
}

class BandD extends StatelessWidget {
  final bndname;
  final bndimage;
  final bnddescription;
  final bndprice;
  final bndqty;
  final bndunit;

  const BandD({
    this.bndname,
    this.bndimage,
    this.bnddescription,
    this.bndprice,
    this.bndqty,
    this.bndunit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => ProductDetailScreen(
        pdetailname: bndname,
        pdetailimage: bndimage,
        pdetaildescription: bnddescription,
        pdetailprice: bndprice,
        pdetailqty: bndqty,
        pdetailunit: bndunit,
      ))), 
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Image.network(bndimage, fit: BoxFit.contain),
          title: Text(bndname),
          subtitle: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(bnddescription),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text("$bndqty",
                  style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(bndunit),
                ),
              ]),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                    "\₹$bndprice",
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
                      padding:
                          EdgeInsets.only(top: 7, bottom: 7, left: 13, right: 13),
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
        ),
      );
  }
}
