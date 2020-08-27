/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-24
 *  @update: 
*/

import 'package:flutter_web/model/help/ws_help_qa_model.dart';

class WSHelpQAsOthers {
  /// 其他
  static List<WSHelpQAModel> listQAs() {
    return [
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
  }
}
