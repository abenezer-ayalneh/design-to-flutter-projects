import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast_app/consts/consts.dart';

class FacebookSigninButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: ScreenUtil().setHeight(48),
          decoration: BoxDecoration(
            color: Color(0xff39579A),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.string(
                facebook_logo,
                height: ScreenUtil().setHeight(18),
                width: ScreenUtil().setWidth(18),
              ),
              VerticalDivider(
                color: Colors.transparent,
                width: ScreenUtil().setWidth(12),
              ),
              Text(
                'Continue with Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Circular_Std",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )),
    );
  }
}
