import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  // implements: is to fix the error when Scaffold.appBar calls this class
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeAppBarState();
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Image.network(
          'https://mentori.vn/upload/recruitment/uwc1625303270.png',
          width: 400,
          height: 70,
        ),
        leading: Center(
          child: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
          Container(width: 20),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
            onPressed: () {},
          ),
        ]);
  }
}