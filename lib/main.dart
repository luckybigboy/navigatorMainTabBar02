import 'package:flutter/material.dart';
import 'navigator_main_tabBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航',
      // 自定义主题
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: navigatorMainTabbar(),
    );
  }
}
