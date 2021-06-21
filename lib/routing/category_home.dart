import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routing_navigation/routing/dummy.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Home Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: CategoryBody(),
    );
  }
}

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY.map((e) {
        return CategoryBooks(
          id: e.id,
          title: e.title,
          color: e.color,
        );
      }).toList(),
    );
  }
}

class CategoryBooks extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryBooks({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/test',
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
      splashColor: Colors.blue,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(
          10,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: Colors.black38,
              width: 10,
            )),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
