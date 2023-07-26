/*
 *  Copyright © 2020年 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-27
 *  @update: 
*/

import 'package:flutter/material.dart';
import 'package:flutter_web/scene/agreement/content/ws_privacy_agreement_content.dart';
import 'package:flutter_web/util/config/ws_config.dart';
import 'package:flutter_web/util/ui/lpc_lib_widget.dart';

/// **隐私协议
class WSPrivacyAgreementPage extends StatelessWidget {
  _mainWidget() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        LPCSizedBox.space(20),
        Align(
          child: LPCText.title(
            WSPrivacyAgreementContent.title,
            fontSize: WSFont.fontSize20,
          ),
        ),
        LPCSizedBox.space(32),
        LPCText(
          WSPrivacyAgreementContent.content,
          fontSize: WSFont.fontSize14,
          textColor: WSColor.color333333,
        ),
        LPCSizedBox.space(20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WSColor.colorBgContainer,
      body: _mainWidget(),
    );
  }
}
