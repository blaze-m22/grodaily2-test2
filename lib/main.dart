import 'package:flutter/material.dart';
import 'package:grodaily2/screens/categories.dart';
import 'package:grodaily2/screens/home.dart';
import 'package:grodaily2/screens/myaccount.dart';
import 'package:grodaily2/screens/offers.dart';
import 'package:grodaily2/screens/scart.dart';
import 'package:grodaily2/screens/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grodaily',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    Offers(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF0F7FA),
      appBar: new AppBar(
        leadingWidth: 40,
        toolbarHeight: 70,
        backgroundColor: Color(0xFF009743),
        title: Image.network("https://drive.google.com/uc?export=view&id=1lt9VytO0c3hgc_NgTdAe2BoYkQ9XFkw5"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new SearchPage()));
            },
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new SCart()));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1534488972407-5a4aa1e47d83?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=709&q=80"),
                ),
                accountName: Text(
                  "Blaze Monteiro",
                  style: Theme.of(context).textTheme.headline6,
                ),
                accountEmail: Text(
                  "blaze@gmail.com",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home_rounded),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Shop by Categories'),
              leading: Icon(Icons.category_rounded),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.people),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(Icons.list_alt_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new SCart()));
              },
            ),
            ListTile(
              title: Text('Offers'),
              leading: Icon(Icons.offline_bolt),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.account_circle_outlined),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Customer Service'),
              leading: Icon(Icons.contact_phone),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings_outlined),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                print("Clicked");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        iconSize: 22,
        selectedFontSize: 12,
        selectedIconTheme: IconThemeData(color: Color(0xFF009743), size: 28),
        selectedItemColor: Color(0xFF009743),
        showUnselectedLabels: true,
        unselectedIconTheme: IconThemeData(
          color: Colors.black45,
        ),
        unselectedItemColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
