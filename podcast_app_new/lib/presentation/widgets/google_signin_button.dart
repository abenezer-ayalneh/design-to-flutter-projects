import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleSigninButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: ScreenUtil().setHeight(48),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/google_logo.svg',
                height: ScreenUtil().setHeight(18),
                width: ScreenUtil().setWidth(18),
              ),
              VerticalDivider(
                color: Colors.transparent,
                width: ScreenUtil().setWidth(12),
              ),
              Text(
                'Continue with Google',
                style: TextStyle(
                  fontFamily: "Circular_Std",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )),
    );
  }
}
