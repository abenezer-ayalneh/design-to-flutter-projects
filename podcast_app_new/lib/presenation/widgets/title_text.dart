import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  final String _text;
  final int? fontSize;
  TitleText(this._text, {this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize == null
            ? ScreenUtil().setSp(20)
            : ScreenUtil().setSp(this.fontSize ?? 16),
        fontFamily: "Circular_Std",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
