// import 'package:circular_check_box/circular_check_box.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast_app_new/consts/consts.dart';
import 'package:podcast_app_new/presentation/pages/forgot_password_page.dart';
import 'package:podcast_app_new/presentation/pages/signup_page.dart';
import 'package:podcast_app_new/presentation/widgets/email_textfield.dart';
import 'package:podcast_app_new/presentation/widgets/facebook_signin_button.dart';
import 'package:podcast_app_new/presentation/widgets/google_signin_button.dart';
import 'package:podcast_app_new/presentation/widgets/password_textfield.dart';
import 'package:podcast_app_new/presentation/widgets/subtitle_text.dart';
import 'package:podcast_app_new/presentation/widgets/title_text.dart';
import 'package:podcast_app_new/presentation/widgets/transparent_divider.dart';
import 'package:podcast_app_new/states/login_page_state.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(30),
              ),
              child: Column(
                children: [
                  TransparentDivider(30),
                  SvgPicture.string(
                    logo,
                    height: ScreenUtil().setHeight(68),
                  ),
                  TransparentDivider(30),
                  TitleText("Welcome Back!"),
                  TransparentDivider(10),
                  SubtitleText(
                    "Login to continue Radio App",
                    fontSize: 14,
                  ),
                  TransparentDivider(27),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: EmailTextfield(
                          currentFocusNode: _emailFocusNode,
                          nextFocusNode: _passwordFocusNode,
                        ),
                      ),
                    ],
                  ),
                  TransparentDivider(18),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: PasswordTextfield(
                          currentFocusNode: _passwordFocusNode,
                        ),
                      ),
                    ],
                  ),
                  TransparentDivider(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // CircularCheckBox(
                            //   value: login_page_state.state.isChecked,
                            //   checkColor: Color(0xff7477A0),
                            //   activeColor: Color(0xff1D192C),
                            //   visualDensity: VisualDensity.compact,
                            //   onChanged: (value) {
                            //     login_page_state.setState(
                            //       (s) => s.isChecked = value,
                            //     );
                            //   },
                            // ),
                            GestureDetector(
                              onTap: () {
                                login_page_state.setState(
                                  (s) => s.isChecked = !s.isChecked,
                                );
                              },
                              child: SubtitleText("Remember me"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                            },
                            child: SubtitleText(
                              'Forgot password?',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TransparentDivider(18),
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
                            'Log in',
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
                  TransparentDivider(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SubtitleText(
                        'OR',
                      ),
                    ],
                  ),
                  TransparentDivider(15),
                  Row(
                    children: [GoogleSigninButton()],
                  ),
                  TransparentDivider(13),
                  Row(children: [FacebookSigninButton()]),
                  TransparentDivider(13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupPage()));
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
                                TextSpan(text: "Don't have an account? "),
                                TextSpan(
                                  text: "Sign up",
                                  style: TextStyle(
                                    color: Color(0xffFB6580),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  TransparentDivider(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(12),
                              fontFamily: "Circular_Std",
                              color: Color(0xff7B7B8B),
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "By signing up you indicate that you have read and agreed to the Patch ",
                              ),
                              TextSpan(
                                text: "Terms of Service",
                                style: TextStyle(
                                  color: Color(0xffFB6580),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
