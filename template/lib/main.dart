import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:template/data/db/hive/adapter.dart';
import 'package:template/ui/pages/home.dart';

void main() async {
  HiveAdapter hiveAdapter = HiveAdapter();
  hiveAdapter.init();
  // hiveAdapter.openBox()
  // await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
