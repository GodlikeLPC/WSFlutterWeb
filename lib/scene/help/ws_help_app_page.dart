/*
 *  Copyright © 2020年 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @date: 2020-07-15 
 *  @Last modified: 2020/07/15 20:24:34 神灬渐入嘉靜
*/

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/model/help/ws_help_qa_model.dart';

import 'package:flutter_web/util/config/ws_config.dart';
import 'package:flutter_web/util/ui/lpc_lib_widget.dart';

/// 帮助中心
class WSHelpAppPage extends StatefulWidget {
  @override
  _WSHelpAppPageState createState() => _WSHelpAppPageState();
}

class _WSHelpAppPageState extends State<WSHelpAppPage>
    with SingleTickerProviderStateMixin {
  List<String> _tabBottomValues = ['账户问题', '无讼学院', '律师协作', '无讼检索', '其他'];

  List<WSHelpQAModel> _listZHWTQAs = [
    WSHelpQAModel(
      question: '如何认证身份？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '认证身份之后多长时间可以通过？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '身份认证成功之后可以改吗？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '如何更改单位？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '无法收到验证码',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '一个账号可以多个设备同时登录使用吗？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '支付及退款相关事宜',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '如果解绑，更换手机号？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '更换手机号之后会对账户原有的信息有什么影响？比如已购课程，无讼币，课程学习等方面',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '如何修改个人信息？',
      answer: '认证身份之后多长时间可以通过？',
    ),
    WSHelpQAModel(
      question: '如何修改登录密码？',
      answer: '认证身份之后多长时间可以通过？',
    ),
  ];

  TabController _tabBottomController;

  @override
  void initState() {
    super.initState();

    _tabBottomController = TabController(
        vsync: this, // 动画效果的异步处理
        length: _tabBottomValues.length // tab 个数
        );
  }

  Widget _widgetListView(String type) {
    List<WSHelpQAModel> listQAs;
    switch (type) {
      case '账户问题':
        break;
      case '无讼学院':
        break;
      case '律师协作':
        break;
      case '无讼检索':
        break;
      case '其他':
        break;
    }
    listQAs = _listZHWTQAs;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 100),
        color: WSColor.colorBgContainer,
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              listQAs[index].isExpanded = !isExpanded;
            });
          },
          children: listQAs
              .map(
                (e) => ExpansionPanel(
                  isExpanded: e.isExpanded,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: LPCText(
                        e.question,
                        fontSize: WSFont.fontSize14,
                        textColor: WSColor.color333333,
                      ),
                    );
                  },
                  body: ListTile(
                    title: LPCText(
                      e.answer,
                      fontSize: WSFont.fontSize14,
                      textColor: WSColor.color333333,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  _widgetTabbar() {
    return PreferredSize(
        child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabBottomController,
            indicatorColor: WSColor.colorTransparent,
            labelPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            isScrollable: true,
            labelColor: WSColor.colorWSBlue,
            unselectedLabelColor: WSColor.color333333,
            tabs: _tabBottomValues.map((String title) {
              return Text(
                title,
                style: TextStyle(
                  fontSize: WSFont.fontSize14,
                ),
              );
            }).toList(),
            onTap: (index) {
              if (mounted) setState(() {});
            },
          ),
        ),
        preferredSize: Size(1, 40));
  }

  _mainWidget() {
    return
        // Column(
        //   children: <Widget>[
        //     Expanded(
        //       child:
        TabBarView(
      controller: _tabBottomController,
      children: _tabBottomValues.map((e) => _widgetListView(e)).toList(),
      // ) ,
      // ),
      // LPCButton.bottom(
      //   btnTitleWS: '在线咨询',
      //   colors: WSColor.colorsBlue,
      //   shadowColor: WSColor.colorShadowBlue,
      //   onPressed: () {
      //     window.open(
      //         'https://wusongtech.udesk.cn/im_client/?web_plugin_id=11742&c_name=GodlikeLPC&c_phone=18514255273&c_email=12345@qq.com',
      //         '咨询God');
      //   },
      // )
      // ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WSColor.colorBgPage,
      appBar: AppBar(
        backgroundColor: WSColor.colorBgContainer,
        title: LPCText.appbar('帮助中心'),
        actions: LPCButton.closeModuleActions(onPressedClose: () {
          print('closeModuleActions');
          window.location.href = 'closewindow:navigation';
        }),
        elevation: 0,
        bottom: _widgetTabbar(),
      ),
      body: _mainWidget(),
    );
  }
}
