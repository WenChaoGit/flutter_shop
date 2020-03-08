import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/index/index.dart';
import 'package:flutter_shop/provider/index.dart';
import 'package:flutter_shop/provider/index_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Store.init(
        context: context,
        child: MaterialApp(
          title: '百姓生活+',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
          home: IndexPage(),
        ));
  }
}
