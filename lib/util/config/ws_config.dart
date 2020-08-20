/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/08/04 11:33:31 GodlikeLPC
*/

export 'ws_key_config.dart';
export 'ws_font_config.dart';
export 'ws_color_config.dart';

enum CompileConfig {
  DEBUG, // 测试环境
  BETA, // 预上线
  RELEASE, // 正式环境
}

/// 当前集成方式
enum IntegrationType {
  Mixed, // 混合
  Flutter, // flutter
  Web, // web
}

class WSConfig {
  /// 当前编译环境
  static var configType = CompileConfig.RELEASE;

  /// 当前网络环境
  static var configNetworkType =
      isRELEASE ? CompileConfig.RELEASE : CompileConfig.DEBUG;

  /// 当前集成方式
  static var integrationType =
      isRELEASE ? IntegrationType.Mixed : IntegrationType.Mixed;

  /// 当前是否为DEBUG版本
  static bool isDEBUG = configType == CompileConfig.DEBUG;

  /// 当前是否为RELEASE版本
  static bool isRELEASE = configType == CompileConfig.RELEASE;
}
