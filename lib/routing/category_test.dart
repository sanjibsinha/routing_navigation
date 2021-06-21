import 'package:flutter/material.dart';

class CategoryTest extends StatelessWidget {
  CategoryTest({
    Key? key,
  }) : super(key: key);

  var title;
  var color;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    title = arguments['title'];
    color = arguments['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$title Books'),
      ),
      body: Container(
        height: 300,
        width: 300,
        margin: const EdgeInsets.all(
          20,
        ),
        padding: const EdgeInsets.all(
          20,
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.black38,
            width: 10,
          ),
        ),
        child: Text('$title Books'),
      ),
    );
  }
}
