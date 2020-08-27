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

/// 无讼隐私协议
class WSPrivacyAgreementPage extends StatelessWidget {
  _mainWidget() {
    return ListView(
      padding: EdgeInsets.all(15),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        RichText(
            text: TextSpan(
          text: WSPrivacyAgreementContent.title,
          style: TextStyle(
              fontSize: 23,
              color: WSColor.color333333,
              letterSpacing: -1,
              fontWeight: WSFont.fontWeightSemiBold),
          children: <InlineSpan>[
            TextSpan(text: '\n'),
            TextSpan(
              text: WSPrivacyAgreementContent.content,
              style: TextStyle(
                fontSize: 13,
                color: WSColor.color666666,
                fontWeight: WSFont.fontWeightLight,
                letterSpacing: -1.5,
              ),
            ),
          ],
        )),
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
