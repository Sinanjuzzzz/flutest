import 'package:flutter/material.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'Router.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());

  Util flameUtil = Util();
  flameUtil.fullScreen();
  flameUtil.setOrientation(DeviceOrientation.portraitUp);
}

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
