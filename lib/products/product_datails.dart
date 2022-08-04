import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final pdetailname;
  final pdetailimage;
  final pdetaildescription;
  final pdetailprice;
  final pdetailqty;
  final pdetailunit;

  const ProductDetailScreen({
    this.pdetailname,
    this.pdetailimage,
    this.pdetaildescription,
    this.pdetailprice,
    this.pdetailqty,
    this.pdetailunit,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F7FA),
        appBar: new AppBar(
          leadingWidth: 40,
          backgroundColor: Color(0xFF009743),
          title: Text("Product Details",
              style: TextStyle(color: Colors.white, fontFamily: 'Segoe')),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                // search
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            SizedBox(height: 15),
            Hero(
              tag: pdetailimage,
              child: Image.network(pdetailimage, height: 150, width: 100, fit: BoxFit.contain),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 2, top: 2),
              child: Text(pdetaildescription,
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 2, top: 2),
              child: Text(pdetailname,
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),            
            Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                children: <Widget>[
                  Padding(
              padding: EdgeInsets.only(left: 5, bottom: 2, top: 2),
              child: Text("Rs. $pdetailprice",
              style: TextStyle(
                fontFamily: 'Segoe',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                ),
              ),
            ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 2, top: 2),
                    child: Text("$pdetailqty $pdetailunit",
                    style: TextStyle(fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}

/*
class ProductScreen extends StatefulWidget {  
  
  final pdetail_name;
  final pdetail_image;
  final pdetail_description;
  final pdetail_price;
  final pdetail_qty;
  final pdetail_unit;

  ProductDetails({
    this.pdetail_name,
    this.pdetail_image,
    this.pdetail_description,
    this.pdetail_price,
    this.pdetail_qty,
    this.pdetail_unit,
  });

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0F7FA),
        appBar: new AppBar(
          leadingWidth: 40,
          backgroundColor: Color(0xFF009743),
          title: Text("Breakfast & Dairy",
              style: TextStyle(color: Colors.white, fontFamily: 'Segoe')),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                // search
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            Container(
                height: 200,
                padding: EdgeInsets.only(right: 15),
                width: MediaQuery.of(context).size.width - 30,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8,
                  children: <Widget> [

                  ],
                ),
            ),
          ],
        )
    );
  }
  Widget _buildCard(String name, String price, String imglink, bool added, bool isfavorite, context){
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 5),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 5,
                ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isfavorite ? Icon(Icons.favorite, color: Color(0xFFEF7532)) :
                    Icon(Icons.favorite_border, color: Color(0xFFEF7532))
                  ],
                ),
              ),
              Hero(
                tag: imglink,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(imglink),
                      ),
                    )
                ),
                ),
                SizedBox(height: 7,),
            ],
          ),
        )
      )
    );
  }
}

// onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(
//         pdetail_name: bndname,
//         pdetail_image: bndimage,
//         pdetail_description: bnddescription,
//         pdetail_price: bndprice,
//         pdetail_qty: bndqty,
//         pdetail_unit: bndunit,
//       ))),
*/