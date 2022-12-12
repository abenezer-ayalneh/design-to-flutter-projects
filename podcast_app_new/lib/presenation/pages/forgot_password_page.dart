import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app_new/consts/consts.dart';
import 'package:podcast_app_new/presenation/pages/login_page.dart';
import 'package:podcast_app_new/presenation/widgets/email_textfield.dart';
import 'package:podcast_app_new/presenation/widgets/subtitle_text.dart';
import 'package:podcast_app_new/presenation/widgets/title_text.dart';
import 'package:podcast_app_new/presenation/widgets/transparent_divider.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(30),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TransparentDivider(200),
                TitleText("Forgot Password"),
                TransparentDivider(10),
                Row(
                  children: [
                    Expanded(
                        child: SubtitleText(
                      "Enter your email address below.\nWe'll look for your account and send you a password reset email.",
                      fontSize: 14,
                      shouldCenter: true,
                    )),
                  ],
                ),
                TransparentDivider(28),
                // EmailTextfield(),
                TransparentDivider(19),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(48),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffFB6580),
                              Color(0xffF11775),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Text(
                          'Send Password Reset',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: 'Circular_Std',
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TransparentDivider(150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(12),
                              fontFamily: "Circular_Std",
                              color: Color(0xff7B7B8B),
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(text: "Remembered you credentials? "),
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  color: Color(0xffFB6580),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
