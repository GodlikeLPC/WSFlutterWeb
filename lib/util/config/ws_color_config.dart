/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/07/16 16:27:56 GodlikeLPC
*/

import 'package:flutter/material.dart';

class WSColor implements Colors {
  static const Color colorWhite = Colors.white;
  static const Color colorBlack = Colors.black;
  static const Color colorRed = Colors.red;
  static const Color colorCyan = Colors.cyan;
  static const Color colorTransparent = Colors.transparent;

  static const Color colorBlackA = Color(0x99000000);
  static const Color colorWSBlack = Color(0xFF282C34);
  static const Color colorWSBlue = Color(0xFF4187F2);
  static const Color colorWSBlueLight = Color(0xFFF1F7FF);
  static const Color colorWSBlueLight2 = Color(0xFFedf4ff);
  static const Color colorWSBlueLight3 = Color(0xFFE5EFFF);
  static const Color colorWSBlueLink = Color(0xFF84A2CB);
  static const Color colorWSGreen = Color(0xFF50AB76);
  static const Color colorWSGreen2 = Color(0xFF4CDEA4);
  static const Color colorWSGreenLight = Color(0xFFE5FFF0);
  static const Color colorWSRed = Color(0xFFFF755F);
  static const Color colorWSRed2 = colorff6666;
  static const Color colorWSRed3 = Color(0xFFFC4B8D);
  static const Color colorWSYellow = Color(0xFFC88A57);
  static const Color colorWSYellow2 = Color(0xFFFFC64B);
  static const Color colorWSPurple = Color(0xFF7C5FFF);
  static const Color colorWSOrange = Color(0xFFF26841);
  static const Color colorWSOrangeLight = Color(0xFFFFF4ED);
  static const Color colorWSGray = Color(0xFF666666);
  static const Color colorWSGrayLight = Color(0xFFF0F0F0);

  /// 原生app色值
  static const Color color0dc18c = Color(0xff0dc18c);
  static const Color color24d6a1 = Color(0xff24d6a1);
  static const Color colorbbbbbb = Color(0xffbbbbbb);
  static const Color colord8d8d8 = Color(0xffd8d8d8);
  static const Color colorededed = Color(0xffEDEDED);

  static const Color color333333 = Color(0xff333333);
  static const Color color444444 = Color(0xff444444);
  static const Color color5c5c5c = Color(0xFF5c5c5c);
  static const Color color626262 = Color(0xff626262);
  static const Color color666666 = Color(0xff666666);
  static const Color color999999 = Color(0xff999999);
  static const Color color808080 = Color(0xff808080);
  static const Color color888888 = Color(0xff888888);
  static const Color colorb3b3b3 = Color(0xFFB3B3B3);
  static const Color colordbdbdb = Color(0xFFDBDBDB);
  static const Color colore6e6e6 = Color(0xffe6e6e6);
  static const Color colorececec = Color(0xffececec);
  static const Color colorf0f0f0 = Color(0xFFF0F0F0);
  static const Color colorf2f2f2 = Color(0xFFF2F2F2);
  static const Color colorf3f3f3 = Color(0xFFF3F3F3);
  static const Color colorf5f5f5 = Color(0xFFF5F5F5);
  static const Color colorf6f6f6 = Color(0xFFF6F6F6);
  static const Color colorf7f7f7 = Color(0xFFF7F7F7);
  static const Color colorff6666 = Color(0xffff6666);
  static const Color colora9aeb7 = Color(0xFFA9AEB7);
  static const Color colorfafafa = Color(0xFFFAFAFA);
  static const Color color84a2cb = Color(0xFF84A2CB);
  static const Color color7fdbdbdb = Color(0x7FDBDBDB);
  static const Color colordbfafafa = Color(0xDBFAFAFA);

  /// background
  static const Color colorBgContainer = colorWhite;
  static const Color colorBgPage = colorf7f7f7;
  static const Color colorBgChip = colorf5f5f5;

  /// Text
  static const Color colorTextTitle = color333333;
  static const Color colorTextContent = color666666;

  /// button
  static const Color colorBtnText = colorWSBlue;
  static const Color colorBtnBgBlue = colorWSBlue;
  static const Color colorBtnMajorTitle = colorff6666;

  /// line
  static const Color colorSeparated = colorececec;

  /// tabbar
  static const Color colorTabbarSelText = colorWSBlue;
  static const Color colorTabbarText = colora9aeb7;
  static const Color colorTabbarBg = colordbfafafa;

  /// appbar
  static const Color colorAppbarTitle = colorBlack;

  /// 渐变色
  static const List<Color> colorsPurple = [colorWSPurple, Color(0xFFAA6EFF)];
  static const List<Color> colorsBlue = [Color(0xFF2DA7FF), Color(0xFF81D0FF)];
  static const List<Color> colorsBlue2 = [Color(0xFF417AF2), Color(0xFF5699FF)];
  static const List<Color> colorsBlue3 = [Color(0xFF5E6EEC), Color(0xFF3394F6)];
  static const List<Color> colorsGreen = [Color(0xFF00DEB5), Color(0xFF83EDED)];
  static const List<Color> colorsYellow = [
    Color(0xFFD4884A),
    Color(0xFFDD9C66)
  ];
  static const List<Color> colorsYellow2 = [colorWSYellow2, colorWSYellow2];

  static const List<Color> colorsBlack = [Color(0xFF5C5C5C), Color(0xFF8F8F8F)];
  static const List<Color> colorsWhite = [Color(0x00F5F5F5), Color(0xFFF5F5F5)];

  /// 阴影色
  static const Color colorShadowPurple = Color(0x337C5FFF);
  static const Color colorShadowBlue = Color(0x4D2DA7FF);
  static const Color colorShadowGreen = Color(0x4D00DEB5);
  static const Color colorShadowBlue2 = Color(0x804E96CA);
  static const Color colorShadowGreen2 = Color(0xFF58CBB7);
  static const Color colorShadowBlack = Color(0x4D000000);
}

///
/// 实际场景中：处理百分比透明度色值
/// eg：WSColorsUtil.hexColor(0x3caafa,alpha: 0.5)//透明度为0.5
class WSColorsUtil {
  /// 十六进制颜色，
  /// hex, 十六进制值，例如：0xffffff,
  /// alpha, 透明度 [0.0,1.0]
  static Color hexColor(int hex, {double alpha = 1}) {
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    return Color.fromRGBO((hex & 0xFF0000) >> 16, (hex & 0x00FF00) >> 8,
        (hex & 0x0000FF) >> 0, alpha);
  }
}
