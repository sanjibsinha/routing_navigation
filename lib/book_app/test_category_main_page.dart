import 'package:flutter/material.dart';

class TestCategoryMainPage extends StatelessWidget {
  const TestCategoryMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/category': (context) => DetailPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY.map(
        (e) {
          return CategoryItems(
            id: e.id,
            title: e.title,
            color: e.color,
          );
        },
      ).toList(),
    );
  }
}

class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItems({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/category',
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
        padding: const EdgeInsets.all(
          10.0,
        ),
        margin: const EdgeInsets.all(
          10.0,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.1),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  var title;
  var color;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    title = arguments['title'];
    color = arguments['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: bookList.map((e) {
          return BookPage();
        }).toList(),
      ),
    );
  }
}

class BookPage extends StatelessWidget {
  /* final String id;
  final String title;
  final String detail;
  final Color color; */
  const BookPage({
    Key? key,
    /* required this.id,
    required this.title,
    required this.detail,
    required this.color, */
    //required this.bookList,
  }) : super(key: key);

  /* final List<Map<String, Object>> bookList; */

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
