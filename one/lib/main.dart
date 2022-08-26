import 'package:flutter/material.dart';
import 'Home.dart';
import 'page1.dart';

void main() => runApp(MaterialApp(
routes: {
'/': (context) => Home(),
'/page1': (context) =>page1(),
}
)
);