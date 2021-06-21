import 'package:flutter/material.dart';
import '/routing/category_test.dart';
import '/routing/category_home.dart';

class CategoryMain extends StatelessWidget {
  const CategoryMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryHome(),
        '/test': (context) => CategoryTest(),
      },
    );
  }
}
