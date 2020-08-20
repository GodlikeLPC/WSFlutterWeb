/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/08/02 14:22:08 GodlikeLPC
*/

import 'package:flutter/material.dart';

import '../../config/ws_config.dart';
import 'lpc_sizedbox.dart';

class LPCText extends Text {
  LPCText(String data,
      {Key key,
      TextAlign textAlign,
      int maxLines,
      Color textColor,
      double fontSize,
      FontWeight fontWeight,
      Paint foreground,
      double letterSpacing,
      TextStyle textStyle,
      StrutStyle strutStyle,
      TextOverflow overflow,
      double heightScale})
      : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: foreground == null
                        ? textColor ?? WSColor.colorTextContent
                        : null,
                    fontSize: fontSize ?? WSFont.fontSize12,
                    fontWeight: fontWeight ?? WSFont.fontWeightRegular,
                    foreground: foreground,
                    letterSpacing: letterSpacing,
                    height: heightScale),
            strutStyle: strutStyle,
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow);

  LPCText.title(
    String data, {
    Key key,
    TextAlign textAlign,
    int maxLines,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
    TextOverflow overflow,
    decoration,
  }) : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: textColor ?? WSColor.colorTextTitle,
                    fontSize: fontSize ?? WSFont.fontSize14,
                    fontWeight: fontWeight ?? WSFont.fontWeightSemiBold),
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow);

  LPCText.tip(
    String data, {
    Key key,
    TextAlign textAlign,
    int maxLines,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
    TextOverflow overflow,
  }) : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: textColor ?? WSColor.color999999,
                    fontSize: fontSize ?? WSFont.fontSize10,
                    fontWeight: fontWeight ?? WSFont.fontWeightRegular),
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow);

  LPCText.superTitle(
    String data, {
    Key key,
    TextAlign textAlign,
    int maxLines,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
    TextOverflow overflow,
  }) : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: textColor ?? WSColor.colorTextTitle,
                    fontSize: fontSize ?? WSFont.fontSize17,
                    fontWeight: fontWeight ?? WSFont.fontWeightBold),
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow);

  LPCText.appbar(
    String data, {
    Key key,
    TextAlign textAlign,
    int maxLines,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
  }) : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: textColor ?? WSColor.colorAppbarTitle,
                    fontSize: fontSize ?? WSFont.fontSize22,
                    fontWeight: fontWeight ?? WSFont.fontWeightSemiBold),
            textAlign: textAlign,
            maxLines: maxLines);

  LPCText.tabbar(
    String data, {
    Key key,
    TextAlign textAlign,
    int maxLines,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
  }) : super(data,
            key: key,
            style: textStyle ??
                TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
            textAlign: textAlign,
            maxLines: maxLines);

  static tap(
    String data, {
    void Function() onTap,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    double width = 54,
    double height = 38,
    int maxLines,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: LPCText(
          data,
          maxLines: maxLines,
          textColor: textColor ?? WSColor.colorWSBlue,
          fontSize: fontSize ?? WSFont.fontSize15,
          fontWeight: fontWeight ?? WSFont.fontWeightRegular,
        ),
      ),
    );
  }

  static cellLabel(
    String data, {
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
  }) {
    // LPCSizedBox(width: double.infinity,height: 44,child: Center(child:
    return ListTile(
        title: LPCText.title(
      data,
      textColor: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ));
  }

  static cellWidget({Widget child}) {
    return LPCSizedBox(
        width: double.infinity, height: 44, child: Center(child: child));
  }

  static cellTip(String data) {
    return ListTile(subtitle: LPCText(data));
  }
}
