import 'package:flutter/material.dart';

import 'package:flutter_web/scene/help/ws_help_app_page.dart';
import 'package:flutter_web/scene/tgkw/ws_platform_service_agreement_page.dart';

void main() {
  runApp(MyApp());
}

/// http://localhost:63800/#/WSHelpAppPage

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '使用帮助',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => WSHelpAppPage(),
        '/WSHelpAppPage': (context) => WSHelpAppPage(),
        '/WSPlatformServiceAgreement': (context) =>
            WSPlatformServiceAgreementPage(),
      },
      // home: Scaffold(
      //   body: Center(
      //     child: Text('页面参数配置错误'),
      //   ),
      // ),
    );
  }
}
