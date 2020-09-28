/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-08-20
 *  @update: 
*/

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_web/scene/agreement/ws_platform_service_agreement_page.dart';
import 'package:flutter_web/scene/agreement/ws_privacy_agreement_page.dart';
import 'package:flutter_web/scene/help/ws_help_app_page.dart';
import 'package:flutter_web/util/config/ws_config.dart';

class WSRouter {
  static Map<String, Widget Function(BuildContext)> routersConfig() {
    /// 更新标题
    _updateTitle(String title) {
      ///html
      document.title = title;

      ///native
      js.context['jsMsgTitleUpdate']?.callMethod("postMessage", [title]);
    }

    return {
      /// 主页
      // '/': (context) {
      //   // _updateTitle('无讼');
      //   return Scaffold(
      //     body: Center(
      //         child: Text(
      //       '帮助中心\n\n'
      //       'WSHelpAppPage\n\n\n\n'
      //       '隐私协议\n\n'
      //       'WSPrivacyAgreementPage\n\n\n\n'
      //       '服务协议\n\n'
      //       'WSPlatformServiceAgreement\n\n\n\n',
      //       textAlign: TextAlign.center,
      //     )),
      //   );
      // },

      /// 帮助中心
      '/WSHelpAppPage': (context) {
        _updateTitle('帮助中心');
        return WSHelpAppPage();
      },

      /// 隐私协议
      '/WSPrivacyAgreementPage': (context) {
        _updateTitle('隐私协议');
        return WSPrivacyAgreementPage();
      },

      /// 平台服务协议
      '/WSPlatformServiceAgreement': (context) {
        _updateTitle('服务协议');
        return WSPlatformServiceAgreementPage();
      }
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
