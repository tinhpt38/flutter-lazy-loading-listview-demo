import 'package:flutter/material.dart';
import 'package:lazy_loading/proxy.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> items = [
    "Zill",
    "Yorn",
    "Alice",
    "Payna",
    "Omen",
    "Liliana",
    "Yena",
    "Wips",
    "Telanas",
    "Raz",
    "Kerra",
    "Elandd'or",
    "Butterfly"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lazy Loading"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
            child: ListView(
                children: items
                    .asMap()
                    .map((key, value) => MapEntry(
                        key,
                        Container(
                          child: Proxy(value),
                        )))
                    .values
                    .toList())));
  }
}
