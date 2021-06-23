import 'package:flutter/material.dart';
import 'package:routing_navigation/book_app/dummy_category.dart';

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BookAppHome(),
        '/categories': (context) => CategoriesMain(),
      },
    );
  }
}

class BookAppHome extends StatelessWidget {
  const BookAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Categories'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map(
          (e) {
            return CategoriesHome(
              id: e.id,
              title: e.title,
              color: e.color,
            );
          },
        ).toList(),
      ),
    );
  }
}

class CategoriesHome extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoriesHome({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/categories',
      arguments: {
        'id': id,
        'title': title,
        'color': color,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.black45,
            width: 10,
          ),
        ),
        child: Text(
          '$title books',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CategoriesMain extends StatelessWidget {
  CategoriesMain({Key? key}) : super(key: key);

  var title;
  var color;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    title = arguments['title'];
    color = arguments['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text('All $title Books'),
        backgroundColor: color,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20,
        ),
        children: [],
      ),
    );
  }
}
