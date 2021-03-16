import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app/consts/consts.dart';
import 'package:podcast_app/presenation/pages/login_page.dart';
import 'package:podcast_app/presenation/widgets/email_textfield.dart';
import 'package:podcast_app/presenation/widgets/facebook_signin_button.dart';
import 'package:podcast_app/presenation/widgets/google_signin_button.dart';
import 'package:podcast_app/presenation/widgets/password_textfield.dart';
import 'package:podcast_app/presenation/widgets/transparent_divider.dart';
import 'package:podcast_app/presenation/widgets/username_textfield.dart';
import 'package:podcast_app/states/signup_page_state.dart';

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
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(20),
                    fontFamily: "Circular_Std",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    // fontFamily: "Georgia",
                  ),
                ),
                TransparentDivider(10),
                Text(
                  "Sign Up and Start Learning",
                  style: TextStyle(
                    color: Color(0xff7B7B8B),
                    fontSize: ScreenUtil().setSp(14),
                    fontFamily: "Circular_Std",
                    fontWeight: FontWeight.w400,
                  ),
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
                    CircularCheckBox(
                      value: signup_page_state.state.isChecked,
                      checkColor: Color(0xffffffff),
                      activeColor: Color(0xffFB6580),
                      visualDensity: VisualDensity.compact,
                      onChanged: (value) {
                        signup_page_state.setState(
                          (s) => s.isChecked = value,
                        );
                      },
                    ),
                    Expanded(
                      flex: 10,
                      child: GestureDetector(
                        onTap: () {
                          signup_page_state.setState(
                            (s) => s.isChecked = !s.isChecked,
                          );
                        },
                        child: Text(
                          "Yes! I want to get the most out of Ezymaster by receiving emails with exclusive deals and learning tools!",
                          style: TextStyle(
                            color: Color(0xff747895),
                            fontFamily: "Circular_Std",
                            fontWeight: FontWeight.w400,
                          ),
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
                    Text(
                      'OR',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(12),
                        fontFamily: 'Circular_Std',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7B7B8B),
                      ),
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
