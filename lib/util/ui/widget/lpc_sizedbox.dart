/*
 *  Copyright 2020 WuSong. All rights reserved.
 *
 *  @author: GodlikeLPC
 *  @create: 2020-06-12 
 *  @update: 2020/07/16 16:19:26 GodlikeLPC
*/

import 'package:flutter/material.dart';

class LPCSizedBox extends SizedBox {
  LPCSizedBox({double width, double height, Widget child})
      : super(width: width, height: height, child: child);
  LPCSizedBox.space([double height]) : super(height: height ?? 10);
  LPCSizedBox.spaceWidth([double width]) : super(width: width ?? 10);
  LPCSizedBox.shrink() : super.shrink();
}
