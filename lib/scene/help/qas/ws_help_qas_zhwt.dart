/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-24
 *  @update: 
*/

import 'package:flutter_web/model/help/ws_help_qa_model.dart';

/// 账户问题
List<WSHelpQAModel> listZHWTQAs = [
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
