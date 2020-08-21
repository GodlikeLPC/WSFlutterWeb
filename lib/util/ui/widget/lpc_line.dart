/*
 *  Copyright 2020 WuSong. All rights reserved..
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/08/02 14:21:34 GodlikeLPC
*/

import 'package:flutter/material.dart';
import 'package:flutter_web/util/config/ws_config.dart';

class LPCLineVertical extends VerticalDivider {
  LPCLineVertical({
    Key key,
    double width = 0.5,
    double thickness = 0.5,
    Color color = WSColor.colorSeparated,
    double indent,
    double endIndent,
  }) : super(
          key: key,
          width: width,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );
}

class LPCLine extends Divider {
  LPCLine({
    Key key,
    double height = 0.5,
    double thickness = 0.5,
    Color color = WSColor.colorSeparated,
    double indent,
    double endIndent,
  }) : super(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );

  LPCLine.light({
    Key key,
    double height = 0.5,
    double thickness = 0.5,
    Color color = WSColor.colorSeparated,
    double indent,
    double endIndent,
  }) : super(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );

  LPCLine.indent({
    Key key,
    double height = 1,
    double thickness = 1,
    Color color = WSColor.colorSeparated,
    double indent = 15,
    double endIndent = 15,
  }) : super(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );

  LPCLine.indentLeft({
    Key key,
    double height = 1,
    double thickness = 1,
    Color color = WSColor.colorSeparated,
    double indent = 15,
    double endIndent,
  }) : super(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );

  const LPCLine.cellSpacing({
    Key key,
    double height = 10,
    double thickness = 10, // 厚度
    Color color = WSColor.colorTextContent,
    double indent,
    double endIndent,
  }) : super(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
        );
}
