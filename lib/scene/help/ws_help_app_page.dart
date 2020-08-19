/*
 *  Copyright © 2020年 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @date: 2020-07-15 
 *  @Last modified: 2020/07/15 20:24:34 神灬渐入嘉靜
*/

import 'package:flutter/material.dart';

/// 使用帮助
class WSHelpAppPage extends StatelessWidget {
  final String strQA = '\nQ: 个人信息在哪里查看?'
      '\nA: APP首页底部菜单栏可选择【我的】，进入后可通过专属名片编辑和查看您的相关资料'
      '\n\nQ: 消息推送可以关闭吗?'
      '\nA: 您好，很抱歉给您带来困扰。请在APP【我的】页面，点击右上角图标进入【设置】-【推送设置】即可操作'
      '\n\nQ: 如何退出登录?'
      '\nA:您好，请在APP【我的】页面，点击右上角图标进入【设置】，即可选择退出登录。';

  _mainWidget() {
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        Text(strQA),
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
