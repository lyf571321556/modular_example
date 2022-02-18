import 'package:flutter/material.dart';

import 'ones_colors.dart';
import 'ones_dimens.dart';

ThemeData appThemeData() {
  const TextTheme themeData = TextTheme(
      headline5: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.w500,
          fontSize: OnesDimens.fontSize_24,
          color: OnesColors.element_colors_00),
      headline6: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.w500,
          fontSize: OnesDimens.fontSize_18,
          color: OnesColors.element_colors_01),
      subtitle1: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_20,
          color: OnesColors.element_colors_02),
      subtitle2: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_18,
          color: OnesColors.element_colors_03),
      bodyText1: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_16,
          color: OnesColors.element_colors_04),
      bodyText2: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_14,
          color: OnesColors.element_colors_05),
      caption: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_12,
          color: OnesColors.element_colors_06),
      overline: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_10,
          color: OnesColors.element_colors_07));
  return ThemeData(
    tooltipTheme: const TooltipThemeData(height: 0),
    fontFamily: 'PingFang SC',
    shadowColor: OnesColors.shadowColor,
    backgroundColor: OnesColors.element_colors_12,
    primaryColor: OnesColors.element_colors_10,
    dividerColor: OnesColors.lineGray,
    scaffoldBackgroundColor: OnesColors.element_colors_11,
    textTheme: themeData,
    //android手势关闭页面，需要配置platform: TargetPlatform.iOS开启优化关闭页面
    platform: TargetPlatform.iOS,
    appBarTheme: const AppBarTheme(
      shadowColor: OnesColors.lineGray,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: OnesColors.element_colors_08),
      titleTextStyle: TextStyle(
          height: OnesDimens.fontHeight_1_50,
          fontWeight: FontWeight.normal,
          fontSize: OnesDimens.fontSize_18,
          color: OnesColors.element_colors_09),
    ),
    hoverColor: const Color(0x00000000), // 应对flutter web在移动设备下的hover问题
  );
}
