import 'package:flutter/material.dart';

class RouterModel {
  final String title;
  final String description;
  final String name;
  final Widget widget;

  const RouterModel(
    {
      required this.title,
      required this.description,
      required this.name,
      required this.widget
    }
  );


}