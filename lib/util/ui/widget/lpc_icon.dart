/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/07/23 19:29:08
*/

import 'package:flutter/material.dart';

class LPCIcon extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final BoxFit fit;
  final Color color;

  LPCIcon(
    this.name, {
    this.width,
    this.height,
    this.fit,
    this.color,
  });

  static Image provider(
    String name, {
    double width,
    double height,
    BoxFit fit,
  }) {
    return Image.asset(
      name,
      fit: fit ?? BoxFit.fitWidth,
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      fit: fit ?? BoxFit.fitWidth,
      width: width,
      height: height ?? width,
    );
  }
}
