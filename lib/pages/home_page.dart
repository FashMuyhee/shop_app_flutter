import 'package:flutter/material.dart';
import 'package:shop_app_flutter/pages/cart_page.dart';
import 'package:shop_app_flutter/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;
  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentTabIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 0,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        currentIndex: currentTabIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_rounded), label: ''),
        ],
      ),
    );
  }
}
