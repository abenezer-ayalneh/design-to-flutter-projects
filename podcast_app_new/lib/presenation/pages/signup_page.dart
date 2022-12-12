// import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app_new/consts/consts.dart';
import 'package:podcast_app_new/presenation/pages/login_page.dart';
import 'package:podcast_app_new/presenation/widgets/email_textfield.dart';
import 'package:podcast_app_new/presenation/widgets/facebook_signin_button.dart';
import 'package:podcast_app_new/presenation/widgets/google_signin_button.dart';
import 'package:podcast_app_new/presenation/widgets/password_textfield.dart';
import 'package:podcast_app_new/presenation/widgets/subtitle_text.dart';
import 'package:podcast_app_new/presenation/widgets/title_text.dart';
import 'package:podcast_app_new/presenation/widgets/transparent_divider.dart';
import 'package:podcast_app_new/presenation/widgets/username_textfield.dart';
import 'package:podcast_app_new/states/signup_page_state.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FocusNode _usernameFocusNode = FocusNode();
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
                TransparentDivider(60),
                TitleText(
                  "Sign Up",
                ),
                TransparentDivider(10),
                SubtitleText(
                  "Sign Up and Start Learning",
                  fontSize: 14,
                ),
                TransparentDivider(27),
                UsernameTextfield(
                  currentFocusNode: _usernameFocusNode,
                  nextFocusNode: _emailFocusNode,
                ),
                TransparentDivider(18),
                EmailTextfield(
                  currentFocusNode: _emailFocusNode,
                  nextFocusNode: _passwordFocusNode,
                ),
                TransparentDivider(18),
                PasswordTextfield(
                  currentFocusNode: _passwordFocusNode,
                  nextFocusNode: null,
                ),
                TransparentDivider(18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    // TODO make the checkbox to be placed a little higher
                    // CircularCheckBox(
                    //   value: signup_page_state.state.isChecked,
                    //   checkColor: Color(0xffffffff),
                    //   activeColor: Color(0xffFB6580),
                    //   visualDensity: VisualDensity.compact,
                    //   onChanged: (value) {
                    //     signup_page_state.setState(
                    //       (s) => s.isChecked = value,
                    //     );
                    //   },
                    // ),
                    Expanded(
                      flex: 10,
                      child: GestureDetector(
                        onTap: () {
                          signup_page_state.setState(
                            (s) => s.isChecked = !s.isChecked,
                          );
                        },
                        child: SubtitleText(
                          "Yes! I want to get the most out of Ezymaster by receiving emails with exclusive deals and learning tools!",
                        ),
                      ),
                    )
                  ],
                ),
                TransparentDivider(24),
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
                          'Sign Up',
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
                TransparentDivider(30),
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
                              TextSpan(text: "Already have an account? "),
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
        )),
      ),
    );
  }
}
