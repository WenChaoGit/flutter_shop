import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/cart/cart.dart';
import 'package:flutter_shop/pages/category/category.dart';
import 'package:flutter_shop/pages/home/home.dart';
import 'package:flutter_shop/pages/index/widgets/bottom_bar.dart';
import 'package:flutter_shop/pages/member/member.dart';
import 'package:flutter_shop/provider/index_provider.dart';
import 'package:provider/provider.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<Widget> tabBodies = [HomePage(), CategoryPage(), CartPage(), MemberPage()];
  @override
  Widget build(BuildContext context) {
    return Consumer<IndexProvider>(
      builder: (context, indexProvider, _) {
      return Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
        bottomNavigationBar: BottomBar(),
        body: IndexedStack(
          index: indexProvider.currentTabIndex,
          children: tabBodies,
        ),
      );
    });
  }
}
