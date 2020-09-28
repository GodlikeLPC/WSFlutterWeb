/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-07-15 
 *  @update: 
*/

import 'package:flutter/material.dart';

import 'package:flutter_web/model/help/ws_help_qa_model.dart';
import 'package:flutter_web/scene/help/qas/ws_help_qas_text.dart';
import 'package:flutter_web/util/config/ws_config.dart';
import 'package:flutter_web/util/ui/lpc_lib_widget.dart';

/// 帮助中心
class WSHelpAppPage extends StatefulWidget {
  @override
  _WSHelpAppPageState createState() => _WSHelpAppPageState();
}

class _WSHelpAppPageState extends State<WSHelpAppPage> with SingleTickerProviderStateMixin {
  List<String> _tabBottomValues = ['账户问题', '无讼学院', '律师协作', '案例检索', '其他'];

  TabController _tabBottomController;

  @override
  void initState() {
    super.initState();

    _tabBottomController = TabController(
        vsync: this, // 动画效果的异步处理
        length: _tabBottomValues.length // tab 个数
        );
  }

  _widgetTabbar() {
    return PreferredSize(
        child: Container(
          color: WSColor.colorBgContainer,
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
        ),
        preferredSize: Size(1, 40));
  }

  _mainWidget() {
    return Column(
      children: <Widget>[
        _widgetTabbar(),
        Expanded(
          child: TabBarView(
            controller: _tabBottomController,
            children: _tabBottomValues.map((e) => _HelpAppPageBodyWidget(type: e)).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('WSHelpAppPage build');
    return
        //  MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   title: '帮助中心',
        //   theme: ThemeData(
        //     primarySwatch: Colors.blue,
        //   ),
        //   home:
        Scaffold(
      backgroundColor: WSColor.colorBgPage,
      // appBar: AppBar(
      //   backgroundColor: WSColor.colorBgContainer,
      //   title: LPCText.appbar('帮助中心'),
      //   actions: LPCButton.closeModuleActions(onPressedClose: () {
      //     print('closeModuleActions');
      //     window.location.href = 'closewindow:navigation';
      //   }),
      //   elevation: 0,
      //   bottom: _widgetTabbar(),
      // ),
      body: _mainWidget(),
      // ),
    );
  }
}

/// 帮助中心内容类
class _HelpAppPageBodyWidget extends StatefulWidget {
  final String type;

  const _HelpAppPageBodyWidget({Key key, this.type}) : super(key: key);
  @override
  _HelpAppPageBodyWidgetState createState() => _HelpAppPageBodyWidgetState();
}

class _HelpAppPageBodyWidgetState extends State<_HelpAppPageBodyWidget> {
  _widgetListViewCell(WSHelpQAModel qaModel) {
    return LPCContainer.cellCard(
      margin: const EdgeInsets.symmetric(vertical: 7.0),
      color: WSColor.colorBgContainer,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListTile(
        title: Text(
          qaModel.question,
          style: TextStyle(
            fontWeight: WSFont.fontWeightBold,
            fontSize: WSFont.fontSize15,
            color: WSColor.color333333,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            qaModel.answer,
            style: TextStyle(
              fontSize: WSFont.fontSize13,
              color: WSColor.color666666,
            ),
          ),
        ),
      ),
    );
  }

  Widget _widgetListView(String type) {
    List<WSHelpQAModel> listQAs;
    switch (type) {
      case '账户问题':
        listQAs = WSHelpQAsAccount.listQAs();
        break;
      case '无讼学院':
        listQAs = WSHelpQAsCollege.listQAs();
        break;
      case '律师协作':
        listQAs = WSHelpQAsLawyersCooperation.listQAs();
        break;
      case '案例检索':
        listQAs = WSHelpQAsCaseRetrieval.listQAs();
        break;
      case '其他':
        listQAs = WSHelpQAsOthers.listQAs();
        break;
    }
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 70),
        physics: BouncingScrollPhysics(),
        itemCount: listQAs.length,
        itemBuilder: (BuildContext context, int index) {
          return _widgetListViewCell(listQAs[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return LPCSizedBox.shrink();
        },
      ),
    );
  }

  _mainWidget() {
    return _widgetListView(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    print('_HelpAppPageBodyWidget build');
    return _mainWidget();
  }
}
