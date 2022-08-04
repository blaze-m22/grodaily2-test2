import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0F7FA),
        appBar: new AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.clear, color: Colors.grey),
            ),
          ],
          leading: BackButton(color: Colors.black54),
          backgroundColor: Colors.green.shade50,
          title: TextField(
            autocorrect: true,
            autofocus: true,
            cursorRadius: Radius.circular(5),
            enableSuggestions: true,
            cursorColor: Colors.black,
            enableInteractiveSelection: true,
            decoration: InputDecoration(
              hintText: 'Search Groceries ...',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Segoe',
                fontStyle: FontStyle.italic,
              ),
            border: InputBorder.none,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 8, right:8),
          children: <Widget>[
            Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Text(
                    "Most Searched",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              children: <Widget> [
                MSearches1(ms1name: "chocolates"),
                MSearches1(ms1name: "Chips"),
                MSearches1(ms1name: "Maaza"),
                MSearches1(ms1name: "Sunflower Oil"),
                MSearches1(ms1name: "Sugar"),
                MSearches1(ms1name: "Salt"),
                MSearches1(ms1name: "Masala"),
                MSearches1(ms1name: "Bhiyrani"),
                MSearches1(ms1name: "Onions"),
                MSearches1(ms1name: "Tomatoes"),
              ],
            ),

            Container(height: 1,color: Colors.grey,margin: EdgeInsets.all(15)),


          ],
        ),
    );
  }
}

class MSearches1 extends StatelessWidget {
  final String ms1name;

  MSearches1({required this.ms1name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Text(
          ms1name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF009743),
            fontFamily: 'Segoe',
          ),
        ),
        padding: EdgeInsets.only(top: 7, bottom: 7, left: 13, right: 13),
        margin: EdgeInsets.only(top: 15, right: 2),
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          border: Border.all(
            color: Color(0xFF009743),
            ),
            borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
