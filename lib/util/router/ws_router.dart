/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-08-20
 *  @update: 
*/

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/scene/agreement/ws_platform_service_agreement_page.dart';
import 'package:flutter_web/scene/agreement/ws_privacy_agreement_page.dart';
import 'package:flutter_web/scene/help/ws_help_app_page.dart';
import 'package:flutter_web/util/config/ws_config.dart';

class WSRouter {
  static Map<String, Widget Function(BuildContext)> routersConfig() {
    return {
      /// 主页
      '/': (context) {
        return WSHelpAppPage();
      },

      /// 帮助中心
      '/WSHelpAppPage': (context) {
        document.title = '帮助中心';
        return WSHelpAppPage();
      },

      /// 隐私协议
      '/WSPrivacyAgreementPage': (context) {
        document.title = '隐私协议';
        return WSPrivacyAgreementPage();
      },

      /// 平台服务协议
      '/WSPlatformServiceAgreement': (context) =>
          WSPlatformServiceAgreementPage(),
    };
  }

  static popFlutter(BuildContext context) {
    switch (WSConfig.integrationType) {
      case IntegrationType.Mixed:
        break;
      case IntegrationType.Flutter:
        break;
      case IntegrationType.Web:
        break;
    }
    Navigator.of(context).maybePop();
  }

  static pop() {
    // switch (WSConfig.integrationType) {
    //   case IntegrationType.Mixed:
    //     break;
    //   case IntegrationType.Flutter:
    //     break;
    //   case IntegrationType.Web:
    //     Navigator.of(context).pop();
    //     break;
    // }
  }

  static maybePop() {
    // switch (WSConfig.integrationType) {
    //   case IntegrationType.Mixed:
    //     FlutterBoost.singleton.closeCurrent(
    //       result: <String, dynamic>{'backFromFlutter': true},
    //       exts: <String, dynamic>{'popType': flutterPop},
    //     );
    //     break;
    //   case IntegrationType.Flutter:
    //     WSRouter.navigator.maybePop();
    //     break;
    // }
  }

  static popToRoot() {
    // switch (WSConfig.integrationType) {
    //   case IntegrationType.Mixed:
    //     FlutterBoost.singleton.closeCurrent(
    //       result: <String, dynamic>{'backFromFlutter': true},
    //       exts: <String, dynamic>{'popType': flutterPopToRoot},
    //     );
    //     break;
    //   case IntegrationType.Flutter:
    //     WSRouter.navigator.popUntil((route) => !route.navigator.canPop());
    //     break;
    // }
  }

  /// @breif 返回到指定页面
  /// 删除栈内指定页面 :
  /// WSCommunicationNative.flutterNavigatorStackRemoved(removedClassNames: ['']);
  static popUntil(String targetRouteName) {
    // switch (WSConfig.integrationType) {
    //   case IntegrationType.Mixed:
    //     FlutterBoost.singleton.closeCurrent(
    //       result: <String, dynamic>{
    //         'backFromFlutter': true,
    //         'targetRouteName': targetRouteName ?? ''
    //       },
    //       exts: <String, dynamic>{'popType': flutterPopUntil},
    //     );
    //     break;
    //   case IntegrationType.Flutter:
    //     WSRouter.navigator.popUntil((route) => !route.navigator.canPop());
    //     break;
    // }
  }
}
