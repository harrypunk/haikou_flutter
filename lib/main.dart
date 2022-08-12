import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends MaterialApp {
  MyApp({Key? key})
      : super(
          key: key,
          title: "haikou study",
          home: Scaffold(
            appBar: AppBar(
              title: const Text("system"),
            ),
            body: const Center(
              child: Text("haikou study system"),
            ),
          ),
        );
}
