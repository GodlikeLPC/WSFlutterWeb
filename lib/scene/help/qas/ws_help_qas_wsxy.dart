/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-24
 *  @update: 
*/

import 'package:flutter_web/model/help/ws_help_qa_model.dart';

class WSHelpQAsCollege {
  /// 无讼学院
  static List<WSHelpQAModel> listQAs() {
    return [
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
  }
}
