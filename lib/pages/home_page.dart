import 'package:flutter/material.dart';
import 'package:nike_shoe/components/bottom_nav_bar.dart';
import 'package:nike_shoe/pages/cart_page.dart';
import 'package:nike_shoe/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // Shop page
    const MyShopPage(),

    // Cart page
    const MyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    width: 100,
                    'images/nike.png',
                    color: Colors.white,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 24),
                //   child: Divider(
                //     color: Colors.grey.shade800,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, bottom: 24),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
