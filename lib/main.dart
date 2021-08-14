import 'package:flutter/material.dart';
import 'package:table_app/DataTableApp.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DataTableApp(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.

