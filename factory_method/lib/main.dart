import 'package:factory_method/factory/entrega_factory.dart';
import 'package:factory_method/factory/enum/entrega_enum.dart';
import 'package:factory_method/home_page.dart';
import 'package:factory_method/models/order_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
