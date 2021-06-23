import 'package:flutter/material.dart';
import 'package:routing_navigation/book_app_one/books.dart';

List<Map<String, Object>> bookList = [
  {
    'Category': 'PHP',
    'Books': [
      Books(
        id: 'p1',
        title: 'PHP One',
        detail: 'PHP One detail',
        color: Colors.blue,
      ),
      Books(
          id: 'p2',
          title: 'PHP Two',
          detail: 'PHP Two detail',
          color: Colors.yellow),
      Books(
        id: 'p3',
        title: 'PHP Three',
        detail: 'PHP Thre detail',
        color: Colors.green,
      ),
    ],
  },
];
