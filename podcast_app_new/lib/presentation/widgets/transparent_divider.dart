import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransparentDivider extends StatelessWidget {
  final int height;

  const TransparentDivider(this.height, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.transparent,
      height: ScreenUtil().setHeight(this.height),
    );
  }
}
