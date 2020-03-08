import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/provider/index_provider.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon:Icon(CupertinoIcons.home) ,title: Text("首页")),
    BottomNavigationBarItem(icon:Icon(CupertinoIcons.search) ,title: Text("分类")),
    BottomNavigationBarItem(icon:Icon(CupertinoIcons.shopping_cart) ,title: Text("购物车")),
    BottomNavigationBarItem(icon:Icon(CupertinoIcons.profile_circled) ,title: Text("会员中心"))
  ];
  @override
  Widget build(BuildContext context) {
    final indexProvider  = Provider.of<IndexProvider>(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomTabs,
      currentIndex: indexProvider.currentTabIndex,
      onTap: (index){
        indexProvider.changeCurrentTabIndex(index);
      },
    );
  }
}