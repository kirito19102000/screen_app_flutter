import 'package:flutter/material.dart';

import 'home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomepageScreen(),
        '/login': (context) => HomepageScreen(),

      },
      initialRoute: '/',
    );
  }

}
