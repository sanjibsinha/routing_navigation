import 'package:flutter/material.dart';

class Books {
  final String id;
  final String title;
  final String detail;
  final Color color;

  Books({
    required this.id,
    required this.title,
    required this.detail,
    this.color = Colors.redAccent,
  });
}
