import 'package:flutter/material.dart';

import 'package:flutter_web/util/router/ws_router.dart';

void main() {
  print('************* flutter_web_version_1.0.5 *************');

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
