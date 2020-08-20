/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-08-20 
 *  @update: 
*/

class WSHelpQAModel {
  /// 问题
  String question;

  /// 答案
  String answer;

  /// 是否展开
  bool isExpanded;

  WSHelpQAModel({
    this.question = '',
    this.answer = '',
    this.isExpanded = false,
  });
}
