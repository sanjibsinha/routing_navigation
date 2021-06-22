import 'package:flutter/material.dart';

class Books {
  final String id;
  final String category_id;
  final String title;
  final String detail;
  final Color color;

  const Books({
    required this.id,
    required this.category_id,
    required this.title,
    required this.detail,
    this.color = Colors.blue,
  });
}
