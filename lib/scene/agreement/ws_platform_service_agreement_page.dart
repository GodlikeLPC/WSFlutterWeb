/*
 *  Copyright © 2020年 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-07-15 
 *  @update: 2020/07/15 20:23:48 神灬渐入嘉靜
*/

import 'package:flutter/material.dart';

import 'content/ws_platform_service_agreement_context.dart';

/// **平台服务协议
class WSPlatformServiceAgreementPage extends StatelessWidget {
  _mainWidget() {
    return ListView(
      padding: EdgeInsets.all(15),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Text(WSPlatformServiceAgreementContent.content),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainWidget(),
    );
  }
}
