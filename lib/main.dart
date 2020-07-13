import 'package:flutter/material.dart';
import 'Router.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '路由技术测试',
      initialRoute: '/',
      routes: Router.routes,
    );
  }
}
