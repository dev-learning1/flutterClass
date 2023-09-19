import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
        child: Row(
          children:[
            Text('더하기 아이콘: '),
            Icon(Icons.add),
          ]
          )
        ),
      ),
    );
  }
}