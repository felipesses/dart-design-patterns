import 'package:flutter/material.dart';
import 'package:singleton/db/connection.dart';
import 'package:singleton/singleton/singleton_factory.dart';

import 'singleton/singleton_raiz.dart';

class SingletonPattern extends StatefulWidget {
  const SingletonPattern({Key? key}) : super(key: key);

  @override
  _SingletonPatternState createState() => _SingletonPatternState();
}

class _SingletonPatternState extends State<SingletonPattern> {
  List<String> nomes = [];

  @override
  void initState() {
    super.initState();
    buscarNomes();
  }

  void buscarNomes() async {
    var db = await Connection.instance.db;

    var result = await db.rawQuery('select * from teste');

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
