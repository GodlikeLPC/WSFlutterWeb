/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-24
 *  @update: 
*/

import 'package:flutter_web/model/help/ws_help_qa_model.dart';

class WSHelpQAsLawyersCooperation {
  /// 律师协作
  static List<WSHelpQAModel> listQAs() {
    return [
      WSHelpQAModel(
        question: '接单的注意事项以及流程',
        answer: '选择您要应征的订单，输入报价，等待发单方选择律师',
      ),
      WSHelpQAModel(
        question: '发单的注意事项以及流程',
        answer:
            '在协作广场发布订单后会有当地的律师进行应征，应征律师的手机号会显示在订单中，您可以先跟应征律师进行电话沟通，沟通完成并确认选择此应征律师，您可以把律师的报价支付付到平台上，接单律师完成您的需求后，您可以在平台上确认订单完成',
      ),
      WSHelpQAModel(
        question: '律师协作的接单和发单都需要认证身份吗？',
        answer: '发单方无需认证身份，接单方必须认证律师身份才可以应征订单~',
      ),
      WSHelpQAModel(
        question: '发单后，我如何收到律师应征的提示?',
        answer: '可以在无讼App或【无讼】微信公众号查看订单',
      ),
      WSHelpQAModel(
        question: '应征的律师不能满足我的要求怎么办?',
        answer: '如您已经支付款项，可以致电无讼4000105353转2进行撤单',
      ),
      WSHelpQAModel(
        question: '律师的应征报价是否等于最终的价格?',
        answer: '您可以先联系接单律师确认好报价，在进行支付款项',
      ),
      WSHelpQAModel(
        question: '我应该什么时候支付酬劳?',
        answer: '接单律师把查询的资料邮寄给您确认无误后，您可以在平台上点击完成订单',
      ),
      WSHelpQAModel(
        question: '我怎么知道有发单律师需要在本地查档、执行或者合作呢?',
        answer: '您可以通过无讼App【首页】-【律师协作】-【协作广场】查询订单',
      ),
      WSHelpQAModel(
        question: '我应征后，其他律师还可以就同一订单应征吗?',
        answer: '每笔订单只有一位接单律师，当发单选择您为接单律师，发单方将无法在选择其他律师进行应征',
      ),
      WSHelpQAModel(
        question: '查档订单，应征后怎么与发单律师联系?',
        answer: '您应征订单后，发单方会跟您进行联系，发单方的手机号不会在平台上进行显示',
      ),
      WSHelpQAModel(
        question: '执行或者合作订单为什么看不到发单律师联系方式?',
        answer: '您应征订单后，发单方会跟您进行联系，发单方的手机号不会在平台上进行显示',
      ),
      WSHelpQAModel(
        question: '应征失败后，我还能再次接同一订单吗?',
        answer: '如发单方发布同样的订单您可以选择一笔订单进行应征',
      ),
      WSHelpQAModel(
        question: '应征报价后，价格变动怎么办呢?',
        answer: '如发单方跟您联系，您可以把您的需求跟发单方说明',
      ),
      WSHelpQAModel(
        question: '是否要收取手续费用?',
        answer:
            '从2020年1月8日起，平台每单会收取20%的平台服务费，在您第一次接单时会有收取平台服务费的协议，当您点击同意后才能进行接单',
      ),
      WSHelpQAModel(
        question: '在发布案件协作信息时，系统提示已被列入黑名单是怎么回事',
        answer: '如您在合作平台发布广告或私下交易，您的账户将会被限制',
      ),
      WSHelpQAModel(
        question: '支付费用之后，因特殊原因双方协商好之后想要撤单可以吗？',
        answer: '订单是可以撤单的，可以致电无讼4000105353转2进行撤单',
      ),
    ];
  }
}
