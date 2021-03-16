import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubtitleText extends StatelessWidget {
  @required
  final String _text;
  final int fontSize;
  final bool shouldCenter;
  SubtitleText(this._text, {this.fontSize, this.shouldCenter});
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: shouldCenter == null ? TextAlign.justify : TextAlign.center,
      style: TextStyle(
        color: Color(0xff7B7B8B),
        fontSize: fontSize == null
            ? ScreenUtil().setSp(12)
            : ScreenUtil().setSp(this.fontSize),
        fontFamily: "Circular_Std",
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
