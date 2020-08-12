// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';

import 'package:flutter_web/scene/help/ws_help_app_page.dart';
import 'package:flutter_web/scene/tgkw/ws_platform_service_agreement_page.dart';

void main() {
  runApp(MyApp());
}

/// http://localhost:63800/#/WSHelpAppPage

class MyApp extends StatelessWidget {
  Map<String, String> getQueryParameters() {
    var win = html.window;
    var loc = win.location;
    var href = loc.href;
    print('href = $href');
    var uri = Uri.parse(href);
    print('uri = $uri');
    var qp = uri.queryParameters;
    print('qp = $qp');
    return qp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '无讼FlutterWeb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/WSHelpAppPage': (context) => WSHelpAppPage(),
        '/WSPlatformServiceAgreement': (context) =>
            WSPlatformServiceAgreementPage(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSHelpAppPage();
    return Scaffold(
      body: Center(
        child: Text('页面参数配置错误'),
      ),
    );
  }
}
