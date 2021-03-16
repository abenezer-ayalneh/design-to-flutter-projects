import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  final String _text;
  TitleText(this._text);
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        color: Colors.white,
        fontSize: ScreenUtil().setSp(20),
        fontFamily: "Circular_Std",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900,
        // fontFamily: "Georgia",
      ),
    );
  }
}
