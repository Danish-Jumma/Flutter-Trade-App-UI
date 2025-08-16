import 'package:flutter/widgets.dart';
import 'package:trade_app/utils/app_constants.dart';

class Customs {
  static text(
    String text, {
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? lineHeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppConstants.primayFont,
        color: color ?? AppConstants.primaryColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 16,
        height: lineHeight ?? 1.2,
      ),
    );
  }
}
