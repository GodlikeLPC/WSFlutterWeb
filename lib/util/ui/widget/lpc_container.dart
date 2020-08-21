/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/08/02 14:21:24 GodlikeLPC
*/

import 'package:flutter/material.dart';

import '../../config/ws_config.dart';

class LPCContainer extends Container {
  LPCContainer.cellCard(
      {Widget child,
      double width,
      double height,
      BoxConstraints constraints,
      Color color,
      List<Color> colors,
      Color shadowColor,
      Decoration decoration,
      List<BoxShadow> boxShadow,
      AlignmentGeometry beginLinearGradient,
      AlignmentGeometry endLinearGradient,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      AlignmentGeometry alignment,
      BorderRadiusGeometry borderRadius,
      double radius,
      BoxBorder border,
      Color borderColor})
      : super(
            child: child,
            width: width,
            height: height,
            constraints: constraints,
            alignment: alignment,
            margin: margin,
            padding: padding,
            decoration: decoration ??
                BoxDecoration(
                    gradient: colors != null
                        ? LinearGradient(
                            colors: colors,
                            begin: beginLinearGradient ?? Alignment.topCenter,
                            end: endLinearGradient ?? Alignment.bottomCenter)
                        : null,
                    boxShadow: boxShadow ?? shadowColor != null
                        ? [
                            BoxShadow(
                                color: shadowColor,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 0.0),
                          ]
                        : null,
                    shape: BoxShape.rectangle,
                    border: border ??
                        (borderColor != null
                            ? Border.all(width: 1, color: borderColor)
                            : null),
                    borderRadius: borderRadius ??
                        BorderRadius.all(Radius.circular(radius ?? 4)),
                    color: color ?? WSColor.colorBgContainer));
}
