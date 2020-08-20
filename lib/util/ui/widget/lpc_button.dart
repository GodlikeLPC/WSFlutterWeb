/*
 *  Copyright 2020 WuSong. All rights reserved.
 * 
 *  @author: GodlikeLPC
 *  @create: 2020-03-01 
 *  @update: 2020/08/02 14:21:05 GodlikeLPC
*/

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/util/router/ws_router.dart';

import '../../config/ws_config.dart';
import '../../config/ws_image_config.dart';
import 'lpc_icon.dart';
import 'lpc_sizedbox.dart';
import 'lpc_text.dart';

enum LPCIconTextAlignment {
  iconTopTextBottom, // 图在上文字在下
  iconBottomTextTop, // 图在下文字在上
  iconLeftTextRight, // 图在左文字在右
  iconRightTextLeft, // 图在右文字在左
}

class LPCButton extends MaterialButton {
  LPCButton({
    Key key,
    @required String btnTitleWS,
    @required VoidCallback onPressed,
    TextStyle textStyle,
    Color color = WSColor.colorBtnBgBlue,
    EdgeInsetsGeometry padding,
    VoidCallback onLongPress,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    double fontSize,
    Color disabledTextColor,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    VisualDensity visualDensity = VisualDensity.comfortable,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize =
        MaterialTapTargetSize.shrinkWrap,
    Widget child,
    bool shapeRounded = true, // 是否需要默认圆角
    double elevation,
    double radius,
  }) : super(
          child: child ??
              LPCText(
                btnTitleWS,
                textColor: textColor ?? WSColor.colorWhite,
                fontSize: fontSize ?? WSFont.fontSize16,
                textStyle: textStyle,
              ),
          visualDensity: visualDensity,
          color: color,
          padding: padding,
          onPressed: onPressed, elevation: elevation,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          shape: shape ?? shapeRounded
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 4.0))
              : null, // 圆角
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          disabledColor: disabledColor,
        );

  /// 底部大按钮
  static bottom({
    Widget child,
    String btnTitleWS,
    VoidCallback onPressed,
    List<Color> colors, // 渐变色
    Color shadowColor,
  }) {
    return Container(
      height: 100,
      color: WSColor.colorTabbarBg,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 15),
            width: double.infinity,
            height: 50.0,
            child: child ??
                (colors != null
                    ? LPCButton.gradient(
                        colors,
                        shadowColor: shadowColor,
                        btnTitleWS: btnTitleWS,
                        onPressed: onPressed,
                      )
                    : LPCButton(
                        btnTitleWS: btnTitleWS,
                        onPressed: onPressed,
                      ))),
      ),
    );
  }

  /// 渐变色按钮
  static gradient(
    List<Color> colors, // 渐变色
    {
    @required String btnTitleWS,
    VoidCallback onPressed,
    BorderRadiusGeometry borderRadius,
    Color shadowColor,
    List<BoxShadow> boxShadow,
    TextStyle textStyle,
    Widget child,
    double width,
    double height,
    double fontSize,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: borderRadius ?? BorderRadius.circular(4.0),
          // 阴影的设置
          boxShadow: boxShadow ?? shadowColor != null
              ? [
                  BoxShadow(
                      color: shadowColor,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 8.0,
                      spreadRadius: 0.0),
                ]
              : null),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child ??
                      LPCText(
                        btnTitleWS,
                        textColor: WSColor.colorWhite,
                        fontSize: fontSize,
                        textStyle: textStyle,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 创建《纯文本按钮》
  static text({
    @required String btnTitleWS,
    @required VoidCallback onPressed,
    EdgeInsetsGeometry padding,
    Color normalBackgroundcolor,
    Color highlightBackgroundColor = WSColor.colorTransparent,
    Color splashColor = WSColor.colorTransparent,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
  }) {
    return FlatButton(
        padding: padding,
        onPressed: onPressed,
        color: normalBackgroundcolor,
        textColor: textColor,
        highlightColor: highlightBackgroundColor,
        splashColor: splashColor,
        child: LPCText(
          btnTitleWS,
          fontSize: fontSize,
          textColor: textColor,
          fontWeight: fontWeight,
          textStyle: textStyle,
        ));
  }

  /// 创建《纯文本按钮》
  static textOnly({
    @required String btnTitleWS,
    @required VoidCallback onPressed,
    EdgeInsetsGeometry padding,
    Color color,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
    TextStyle textStyle,
    TextAlign textAlign,
  }) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          padding: padding,
          color: color,
          child: LPCText(
            btnTitleWS,
            fontSize: fontSize,
            textColor: textColor,
            fontWeight: fontWeight,
            textStyle: textStyle,
            textAlign: textAlign,
          ),
        ));
  }

  static cellTitle({
    @required String btnTitleWS,
    TextStyle textStyle = const TextStyle(color: WSColor.colorWhite),
    Color color,
    Color disabledColor,
    VoidCallback onPressed,
    double height = 44,
    double radius = 0,
  }) {
    return ListTile(
      title: Container(
        height: height,
        child: LPCButton(
          btnTitleWS: btnTitleWS,
          textStyle: textStyle,
          color: color,
          disabledColor: disabledColor,
          onPressed: onPressed,
          shapeRounded: true,
          radius: radius,
        ),
      ),
    );
  }

  static icon({
    String imgName,
    Widget icon,
    EdgeInsetsGeometry padding,
    BoxConstraints constraints,
    double width,
    double height,
    BoxFit fit,
    Color color,
    @required VoidCallback onPressed,
  }) {
    return InkWell(
        child: Container(
          padding: padding,
          child: imgName != null
              ? SizedBox(
                  width: width,
                  height: height,
                  child: LPCIcon(imgName,
                      width: width, height: height, fit: fit, color: color),
                )
              : icon,
        ),
        onTap: onPressed);
  }

  static back(context) {
    if (Platform.isAndroid) {
      return BackButton(
          color: WSColor.color626262,
          onPressed: () {
            WSRouter.maybePop();
          });
    } else {
      return LPCButton.icon(
          imgName: WSImage.pathCommonBack,
          // width: 44,
          // height: 44,
          // fit: BoxFit.scaleDown,
          onPressed: () {
            WSRouter.popFlutter(context);
          });
    }
    // return LPCButton.icon(
    // imgName: WSImage.pathCommonBack, onPressed: ()=> WSRouterM.canPop());
  }

  /// 关闭整个模块
  static List<Widget> closeModuleActions({void Function() onPressedClose}) {
    return <Widget>[
      LPCButton.icon(
        imgName: 'images/close_nav.png',
        width: 20,
        height: 2,
        onPressed: onPressedClose ??
            () {
              /// 直接回主页
              WSRouter.maybePop();
            },
      ),
      LPCSizedBox.spaceWidth(15)
    ].cast();
  }

  static search(
    String hintText, {
    TextStyle textStyle = const TextStyle(color: WSColor.colorWhite),
    Color color = WSColor.colordbdbdb,
    double fontSize,
    VoidCallback onPressed,
    double width = double.infinity,
    double height = 38,
    double iconWidth = 18,
    double iconHeight = 18,
    double cornerRadius = 4,
    Color textColor = WSColor.color999999,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    EdgeInsetsGeometry padding = const EdgeInsets.only(left: 8),
  }) {
    return Opacity(
        opacity: 0.5,
        child: Container(
          padding: padding,
          child: LPCButton.iconText(
              imgName: 'images/icon/icon_search.svg',
              text: hintText,
              fontSize: fontSize,
              onPressed: onPressed,
              iconTextAlignment: LPCIconTextAlignment.iconLeftTextRight,
              width: width,
              height: height,
              iconWidth: iconWidth,
              iconHeight: iconHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cornerRadius),
                  color: color),
              mainAxisAlignment: mainAxisAlignment,
              startWidth: 10),
        ));
  }

  static iconText({
    @required String imgName,
    String imgUrl,
    Widget icon,
    @required String text,
    @required VoidCallback onPressed,
    TextStyle textStyle,
    double fontSize,
    FontWeight fontWeight,
    double width,
    double height,
    double iconWidth,
    double iconHeight,
    Color backgroundColor = WSColor.colorTransparent,
    Color textColor,
    BoxDecoration decoration,
    MainAxisAlignment mainAxisAlignment,
    double startWidth = 0,
    double startTop = 0,
    double spaceWidth,
    double spaceHeight,
    BoxFit fit,
    LPCIconTextAlignment iconTextAlignment =
        LPCIconTextAlignment.iconTopTextBottom,
  }) {
    Widget widgetIcon = icon != null
        ? icon
        : imgName != null
            ? LPCIcon(
                imgName,
                width: iconWidth ?? 53,
                height: iconHeight,
                fit: fit,
              )
            : Image.network(
                imgUrl,
                width: iconWidth ?? 53,
                height: iconHeight,
              );
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: decoration,
        color: decoration == null ? backgroundColor : null,
        child: iconTextAlignment == LPCIconTextAlignment.iconLeftTextRight
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    mainAxisAlignment ?? MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: startWidth,
                  ),
                  widgetIcon,
                  SizedBox(
                    width: spaceWidth ?? 9,
                  ),
                  LPCText(
                    text,
                    textColor: textColor,
                    textStyle: textStyle,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ],
              )
            : iconTextAlignment == LPCIconTextAlignment.iconRightTextLeft
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:
                        mainAxisAlignment ?? MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: startWidth,
                      ),
                      LPCText(
                        text,
                        textColor: textColor,
                        textStyle: textStyle,
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                      ),
                      SizedBox(
                        width: spaceWidth ?? 9,
                      ),
                      widgetIcon,
                    ],
                  )
                : iconTextAlignment == LPCIconTextAlignment.iconTopTextBottom
                    ? Column(
                        mainAxisAlignment:
                            mainAxisAlignment ?? MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: startTop ?? 0,
                          ),
                          widgetIcon,
                          SizedBox(
                            height: spaceHeight ?? 0,
                          ),
                          LPCText(
                            text,
                            textColor: textColor ?? WSColor.color333333,
                            textStyle: textStyle,
                            fontSize: fontSize,
                            fontWeight: fontWeight,
                          ),
                        ],
                      )
                    : iconTextAlignment ==
                            LPCIconTextAlignment.iconBottomTextTop
                        ? Column(
                            mainAxisAlignment: mainAxisAlignment ??
                                MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: startTop ?? 0,
                              ),
                              LPCText(
                                text,
                                textColor: textColor ?? WSColor.color333333,
                                textStyle: textStyle,
                                fontSize: fontSize,
                                fontWeight: fontWeight,
                              ),
                              SizedBox(
                                height: spaceHeight ?? 0,
                              ),
                              widgetIcon,
                            ],
                          )
                        : null,
      ),
    );
  }
}
