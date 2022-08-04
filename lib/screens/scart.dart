import 'package:flutter/material.dart';

class SCart extends StatefulWidget {
  @override
  _SCartState createState() => _SCartState();
}

class _SCartState extends State<SCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F7FA),
      appBar: new AppBar(
        leadingWidth: 40,
        backgroundColor: Color(0xFF009743),
        title: Text("Shopping Cart"),
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
      body: CartProducts(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text("Total"),
              subtitle: Text("\₹125"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text("CONTINUE", style: TextStyle(color: Colors.white)),
              color: Color(0xFF009743),
            )),
          ],
        ),
      ),
    );
  }
}
// cart products

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsincart = [
    {
      "name": "Onions",
      "image":
          "https://www.jiomart.com/images/product/150x150/590003515/onion-1-kg-0-20200710.jpg",
      "brand": "Grodaily",
      "price": 50,
      "quantity": 1,
    },
    {
      "name": "Hershey's Kisses",
      "image":
          "https://www.jiomart.com/images/product/75x75/590033933/hersheys-kisses-milk-chocolate-108-g-0-20210806.jpg",
      "brand": "Hersheys",
      "price": 130,
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
        itemCount: productsincart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cpdtname: productsincart[index]["name"],
            cpdtimage: productsincart[index]["image"],
            cpdtbrand: productsincart[index]["brand"],
            cpdtprice: productsincart[index]["price"],
            cpdtqty: productsincart[index]["quantity"],
          );
        }
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cpdtname;
  final cpdtimage;
  final cpdtbrand;
  final cpdtprice;
  final cpdtqty;

  const SingleCartProduct({
    this.cpdtname,
    this.cpdtimage,
    this.cpdtbrand,
    this.cpdtprice,
    this.cpdtqty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
      leading: Image.network(cpdtimage, fit: BoxFit.contain, width: 80,),
      title: Text(cpdtname),
      subtitle: Column(
        children: <Widget>[
// row inside column
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("Brand :"),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(cpdtbrand),
              ),
            ],
          ),
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            child: Text("\₹$cpdtprice", 
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
/*      trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
          children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_drop_up, size: 50,), onPressed: (){}, ),
          Text("\ $cpdtqty", style: TextStyle(fontSize: 25),),
          IconButton(icon: Icon(Icons.arrow_drop_down, size: 50,), onPressed: (){}, ),
          ],
          ),
        ),
*/
// Trailing section
      trailing: Column(
        children: [
          InkWell(
            child:  Icon(Icons.arrow_drop_up, color: Colors.black, size: 23,),
            onTap: (){},
          ),
          Expanded(child: new Text("$cpdtqty" , style: new TextStyle(fontSize: 10),),),
          InkWell(
            child:  Icon(Icons.arrow_drop_down, color: Colors.black, size: 23,),
            onTap: (){},
          ),
        ],
      ),

      ),
    );
  }
}
