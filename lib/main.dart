import 'package:flutter/material.dart';

import 'package:flutter_web/util/router/ws_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '无讼',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: WSRouter.routersConfig(),
    );
  }
}
