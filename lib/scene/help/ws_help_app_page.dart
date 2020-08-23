/*
 *  Copyright © 2020年 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @date: 2020-07-15 
 *  @Last modified: 2020/07/15 20:24:34 神灬渐入嘉靜
*/

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
            children: _tabBottomValues
                .map((e) => _HelpAppPageBodyWidget(type: e))
                .toList(),
          ),
        ),
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('WSHelpAppPage build');
    return Scaffold(
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
  /// 账户问题
  List<WSHelpQAModel> _listZHWTQAs = [
    WSHelpQAModel(
      question: '如何认证身份？',
      answer: '完成注册并成功登录后，可在App中【我的】页面进入个人中心，点击【立即认证】即可进行身份认证',
    ),
    WSHelpQAModel(
      question: '认证身份之后多长时间可以通过？',
      answer: '认证审核为人工审核，一般情况下需要1-3个工作日。如遇提交审核后一直未收到回复，可通过在线留言进行反馈。',
    ),
    WSHelpQAModel(
      question: '身份认证成功之后可以改吗？',
      answer: '认证成功后，用户可以通过点击【编辑名片】中的“平台已认证”字样，进行重新认证；',
    ),
    WSHelpQAModel(
      question: '无法收到验证码',
      answer: '未收到验证码可再次提交，请确认您的网络通讯状况良好，并检查验证码短信未被运营商误判为营销短信',
    ),
    WSHelpQAModel(
      question: '一个账号可以多个设备同时登录使用吗？',
      answer: '一个账号可以支持无讼App和无讼案例网页版同时登录，但无法同时使用两个手机设备登录。',
    ),
    WSHelpQAModel(
      question: '如果解绑，更换手机号？',
      answer: '打开无讼App【我的】页面 -通过右上方图标进入【设置】页面-【账号设置】-【绑定手机】',
    ),
    WSHelpQAModel(
      question: '更换手机号之后会对账户原有的信息有什么影响？比如已购课程，无讼币，课程学习等方面',
      answer:
          '无讼App上数据不会影响。但如您曾在小鹅通无讼学院店铺购买过课程，在更换绑定手机号之后，需再次登录小鹅通账户并修改手机号，以便信息同步。',
    ),
    WSHelpQAModel(
      question: '如何修改个人信息？',
      answer: '打开无讼App【我的】页面-左上方头像及名字区域-【个人设置】，即可修改个人基本资料',
    ),
    WSHelpQAModel(
      question: '如何修改登录密码？',
      answer: '打开无讼App【我的】页面 -通过右上方图标进入【设置】页面-【账号设置】-【修改密码】',
    ),
  ];

  /// 无讼学院
  List<WSHelpQAModel> _listWSXYQAs = [
    WSHelpQAModel(
      question: '如何购买无讼学院课程？',
      answer: '进入【无讼APP】-【学习】页面，选择要购买的课程进入课程详情页后点击右下方购买按钮即可实现购买（课程只支持无讼币购买）',
    ),
    WSHelpQAModel(
      question: '购买之后可以在哪里看到购买记录？',
      answer: '进入【无讼APP】-【我的】页面 -【课程学习】-【已购课程】中可查看已购课程',
    ),
    WSHelpQAModel(
      question: '学院的课程可以在电脑端观看吗？',
      answer: '可以。进入课程详情页面后点击右上方分享按钮，点击复制链接，复制到电脑端浏览器打开即可（建议使用谷歌浏览器观看）',
    ),
    WSHelpQAModel(
      question: '购买的课程会因为特殊原因下架吗，如果下架了怎么办？',
      answer: '一般不会下架，若因为特殊原因下架不影响已购用户的观看',
    ),
    WSHelpQAModel(
      question: '购买的课程怎么开具发票？',
      answer: '进入【无讼APP】-【我的】页面 - 点击【消费记录】详情页 - 点击右上角【开发票】可自助开票',
    ),
    WSHelpQAModel(
      question: '课程更新需要多久？',
      answer: '不同课程更新进度不同，具体请看课程详情页面介绍',
    ),
    WSHelpQAModel(
      question: '开具发票的要求和注意事项？',
      answer: '必须准确填写开票信息，建议金额积累到百元以上一次性开票',
    ),
    WSHelpQAModel(
      question: '购买课程之后没有观看可以退吗？',
      answer: '课程为虚拟内容服务，购买成功后不可退款或转让，购买前请知悉',
    ),
    WSHelpQAModel(
      question: '如何使用优惠券?',
      answer: '获取到优惠券后，可在购买课程时选择使用优惠券',
    ),
    WSHelpQAModel(
      question: '无讼币的用途？',
      answer: '无讼币作为虚拟币目前仅用于购买APP内的虚拟内容(不含实务和产品)',
    ),
    WSHelpQAModel(
      question: '如何充值无讼币?',
      answer: '进入【无讼APP】-【我的】页面 - 点击【我的账户】进入详情页进行充值',
    ),
    WSHelpQAModel(
      question: '如何使用律协免单资格？',
      answer: '若您所在的律协已经和无讼合作组织培训，您可以在购课时选择律协免单支付购买课程',
    ),
    WSHelpQAModel(
      question: '优惠券可以叠加使用吗？',
      answer: '暂不支持叠加使用',
    ),
    WSHelpQAModel(
      question: '购买直播课之后，每天开播之前会有提示吗？',
      answer: '暂时无提醒',
    ),
    WSHelpQAModel(
      question: '如何给课程评价？',
      answer: '进入课程详情页点击右上方评价按钮，就可以对课程进行评价',
    ),
    WSHelpQAModel(
      question: '无法正常签到怎么办',
      answer: '律协实习培训无法签到，请及时联系助教',
    ),
  ];

  /// 律师协作
  List<WSHelpQAModel> _listLSXZQAs = [
    WSHelpQAModel(
      question: '接单的注意事项以及流程',
      answer: '您好，您选择您要应征的订单，输入报价，等待发单方选择律师~',
    ),
    WSHelpQAModel(
      question: '发单的注意事项以及流程',
      answer:
          '您好，您在协作广场发布订单后会有当地的律师进行应征，应征律师的手机号会显示在订单中，您可以先跟应征律师进行电话沟通，沟通完成并确认选择此应征律师，您可以把律师的报价支付付到平台上，接单律师完成您的需求后，您可以在平台上确认订单完成~',
    ),
    WSHelpQAModel(
      question: '律师协作的接单和发单都需要认证身份吗？',
      answer: '您好，发单方无需认证身份，接单方必须认证律师身份才可以应征订单~',
    ),
    WSHelpQAModel(
      question: '发单后，我如何收到律师应征的提示?',
      answer: '您好，您可以在无讼APP或无讼公众号查看订单~',
    ),
    WSHelpQAModel(
      question: '应征的律师不能满足我的要求怎么办?',
      answer: '您好，如您已经支付款项，您可以致电无讼4000105353转2 ，进行撤单~',
    ),
    WSHelpQAModel(
      question: '律师的应征报价是否等于最终的价格?',
      answer: '您好，您可以先联系接单律师确认好报价，在进行支付款项~',
    ),
    WSHelpQAModel(
      question: '我应该什么时候支付酬劳?',
      answer: '您好，接单律师把查询的资料邮寄给您确认无误后，您可以在平台上点击完成订单~',
    ),
    WSHelpQAModel(
      question: '我怎么知道有发单律师需要在本地查档、执行或者合作呢?',
      answer: '您好，您可以下载无讼APP-律师协作-协作广场查询订单',
    ),
    WSHelpQAModel(
      question: '我应征后，其他律师还可以就同一订单应征吗?',
      answer: '您好，每笔订单只有一位接单律师，当发单选择您为接单律师，发单方将无法在选择其他律师进行应征',
    ),
    WSHelpQAModel(
      question: '查档订单，应征后怎么与发单律师联系?',
      answer: '您好，您应征订单后，发单方会跟您进行联系，发单方的手机号不会在平台上进行显示~',
    ),
    WSHelpQAModel(
      question: '执行或者合作订单为什么看不到发单律师联系方式?',
      answer: '您好，您应征订单后，发单方会跟您进行联系，发单方的手机号不会在平台上进行显示~',
    ),
    WSHelpQAModel(
      question: '应征失败后，我还能再次接同一订单吗?',
      answer: '您好，如发单方发布同样的订单您可以选择一笔订单进行应征~',
    ),
    WSHelpQAModel(
      question: '应征报价后，价格变动怎么办呢?',
      answer: '您好，如发单方跟您联系，您可以把您的需求跟发单方说明~',
    ),
    WSHelpQAModel(
      question: '是否要收取手续费用?',
      answer: '您好，从1月8日起，平台每单会收取20%的平台服务费，在您第一次接单时会有收取平台服务费的协议，当您点击同意后才能进行接单~',
    ),
    WSHelpQAModel(
      question: '在发布案件协作信息时，系统提示已被列入黑名单是怎么回事',
      answer: '您好，如您在合作平台发布广告或私下交易，您的账户将会被限制',
    ),
    WSHelpQAModel(
      question: '支付费用之后，因特殊原因双方协商好之后想要撤单可以吗？',
      answer: '您好，订单是可以撤单的，需要您致电无讼4000105353转2 ，进行撤单~',
    ),
  ];

  /// 案例检索
  List<WSHelpQAModel> _listALJSQAs = [
    WSHelpQAModel(
      question: '可以在电脑上使用检索功能吗？',
      answer: '可通过电脑浏览器访问www.itslaw.com 网站进行登录检索。',
    ),
    WSHelpQAModel(
      question: '无讼案例搜索入口',
      answer: '可通过无讼App【首页】顶部检索框、【首页】-【案例检索】、【工具】顶部检索框，',
    ),
    WSHelpQAModel(
      question: '中国裁判文书网已经下线的案例文书如何申请在无讼App上下线？',
      answer: '可通过在线留言的方式反馈相关案号给工作人员，核实后将进行下线处理。',
    ),
    WSHelpQAModel(
      question: '无讼案例怎么进行高级搜索，规定搜索范围？',
      answer: '在检索框中输入“？”可打开高级检索的引导页面',
    ),
    WSHelpQAModel(
      question: '搜索到的法规过期如何处理',
      answer: '可通过在线留言的方式反馈对应法规给工作人员，核实后将进行更新。',
    ),
    WSHelpQAModel(
      question: '输入了关键字搜索之后，无法加载出内容',
      answer:
          '请确认您的网络通讯状况良好，也可重启App进行再次加载；如您依然遇见问题，建议使用电脑浏览器访问www.itslaw.com 无讼案例官网进行检索使用。',
    ),
    WSHelpQAModel(
      question: '检索出来的案例和法规如何进行下载，收藏，生成在线报告？',
      answer: '目前无讼App暂不支持案例下载，您可通过电脑浏览器访问www.itslaw.com 无讼案例官网进行检索并下载。',
    ),
  ];

  /// 其他
  List<WSHelpQAModel> _listOtherQAs = [
    WSHelpQAModel(
      question: '关于无讼',
      answer:
          '无讼网络科技（北京）有限公司是一家诞生于故宫东600米四合院内的法律+互联网科技公司。2014年成立以来，无讼已获得顶级投资机构IDG资本2700万元A轮融资和华创资本、IDG资本的1.2亿元B轮融资。'
          '作为一家法律+互联网公司，无讼具备法律与互联网的双重背景：'
          '孵化于国内顶尖的律师事务所——天同律师事务所。天同在高端商事诉讼领域17年的专业服务经验是无讼法律基因的来源。同时在业务发展过程中无讼先后服务了阿里巴巴、58集团等众多知名企业，积累了大量企业端的专业法律事务的服务经验和标准流程。'
          '自成立之初无讼就构建了强大的产品研发团队（产品研发人员占比65%以上）。先后推出了多款领先法律行业的热门互联网产品：无讼案例、无讼法规、无讼名片、无讼合作、人工智能法小淘等，受到行业广泛关注。'
          '无讼希望基于专业法律服务的基因，借助互联网和先进信息技术，构建更加公平正义的法律服务平台，成为人人信赖的法律伙伴。',
    ),
    WSHelpQAModel(
      question: '联系我们',
      answer: '官方服务电话：400-010-5353'
          '（工作日：9:00-18:00）'
          '地址：北京市东城区南河沿大街南湾子胡同16号',
    ),
    WSHelpQAModel(
      question: '是否支持文章投稿？',
      answer: '目前暂不支持个人文章投稿，如有其他合作需求，可访问www.wusong.com无讼官网进行沟通',
    ),
    WSHelpQAModel(
      question: '加入我们',
      answer: '简历投递：hr@wusongtech.com',
    ),
  ];

  _widgetListViewCell(WSHelpQAModel qaModel) {
    return LPCContainer.cellCard(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      color: WSColor.colorBgContainer,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListTile(
        title: Text(
          qaModel.question,
          style: TextStyle(
            fontWeight: WSFont.fontWeightSemiBold,
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
        listQAs = _listZHWTQAs;
        break;
      case '无讼学院':
        listQAs = _listWSXYQAs;
        break;
      case '律师协作':
        listQAs = _listLSXZQAs;
        break;
      case '案例检索':
        listQAs = _listALJSQAs;
        break;
      case '其他':
        listQAs = _listOtherQAs;
        break;
    }
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15, right: 15),
      // color: WSColor.colorBgContainer,
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 70),
        physics: BouncingScrollPhysics(),
        itemCount: listQAs.length,
        itemBuilder: (BuildContext context, int index) {
          return _widgetListViewCell(listQAs[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return LPCSizedBox.shrink();
          // return LPCLine();
        },
      ),
    );

    // return SingleChildScrollView(
    //   physics: BouncingScrollPhysics(),
    //   child: Container(
    //     margin: EdgeInsets.only(top: 10, bottom: 100),
    //     color: WSColor.colorBgContainer,
    //     child: ExpansionPanelList.radio(
    //       expansionCallback: (index, isExpanded) {
    //         setState(() {
    //           listQAs[index].isExpanded = !isExpanded;
    //         });
    //       },
    //       children: listQAs
    //           .map(
    //             (e) => ExpansionPanelRadio(
    //               canTapOnHeader: true,
    //               value: e.question,
    //               headerBuilder: (context, isExpanded) {
    //                 return ListTile(
    //                   title: LPCText(
    //                     e.question,
    //                     fontSize: WSFont.fontSize14,
    //                     textColor: WSColor.color333333,
    //                   ),
    //                 );
    //               },
    //               body: ListTile(
    //                 title: LPCText(
    //                   e.answer,
    //                   fontSize: WSFont.fontSize14,
    //                   textColor: WSColor.color333333,
    //                 ),
    //               ),
    //             ),
    //           )
    //           .toList(),
    //     ),
    //   ),
    // );
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
