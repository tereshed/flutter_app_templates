import 'package:flutter/material.dart';
import 'package:template/data/db/hive/adapter.dart';
import 'package:template/ui/pages/home.dart';

void main() {
  HiveAdapter hiveAdapter = HiveAdapter();
  hiveAdapter.init();
  // hiveAdapter.openBox()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HiveAdapter hiveAdapter = HiveAdapter();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}
