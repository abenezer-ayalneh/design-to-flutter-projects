import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uvento_app/uvento/presentation/pages/homepage.dart';
import 'package:uvento_app/uvento/presentation/widgets/homepage_svg_icon_constants.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment(-1.48, -1),
              child: SvgPicture.string(
                left_top,
                height: ScreenUtil().setHeight(100),
                width: ScreenUtil().setWidth(100),
              ),
            ),
            Align(
              alignment: Alignment(
                0.2,
                -1.06,
              ),
              child: SvgPicture.string(
                rewind_picture,
                height: ScreenUtil().setHeight(100),
                width: ScreenUtil().setWidth(100),
              ),
            ),
            Align(
              alignment: Alignment(
                1.15,
                -0.98,
              ),
              child: SvgPicture.string(
                right_top_semi_circle,
                height: ScreenUtil().setHeight(150),
                width: ScreenUtil().setWidth(150),
              ),
            ),
            Align(
              alignment: Alignment(
                1.22,
                -0.455,
              ),
              child: SvgPicture.string(
                star,
                height: ScreenUtil().setHeight(70),
                width: ScreenUtil().setWidth(70),
              ),
            ),
            Align(
              alignment: Alignment(
                2.3,
                0,
              ),
              child: SvgPicture.string(
                right_center,
                height: ScreenUtil().setHeight(70),
                width: ScreenUtil().setWidth(70),
              ),
            ),
            Align(
              alignment: Alignment(
                -1.0,
                1.07,
              ),
              child: SvgPicture.string(
                bottom_left,
                height: ScreenUtil().setHeight(80),
                width: ScreenUtil().setWidth(80),
              ),
            ),
            Align(
              alignment: Alignment(
                0.39,
                1.07,
              ),
              child: Transform.translate(
                offset: Offset(-6, 0),
                child: SvgPicture.string(
                  bottom_center,
                  height: ScreenUtil().setHeight(80),
                  width: ScreenUtil().setWidth(80),
                ),
              ),
            ),
            Align(
              alignment: Alignment(
                -0.04,
                0.81,
              ),
              child: SvgPicture.string(
                bottom_center_2,
                height: ScreenUtil().setHeight(80),
                width: ScreenUtil().setWidth(80),
              ),
            ),
            Align(
              alignment: Alignment(
                1.13,
                0.81,
              ),
              child: SvgPicture.string(
                bottom_right,
                height: ScreenUtil().setHeight(90),
                width: ScreenUtil().setWidth(80),
              ),
            ),
            Align(
              alignment: Alignment(-0.6, -0.02),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                          bottom: ScreenUtil().setHeight(20),
                        ),
                        child: SvgPicture.string(uvento_logo)),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(30),
                              color: Colors.white),
                          children: [
                            TextSpan(text: 'UVE'),
                            TextSpan(
                              text: 'NTO',
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(30),
                                color: Color(0xffffa700),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(250),
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setWidth(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Text(
                                "There’s a lot happening around you! Our mission is to provide what’s happening near you!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("\x1B[33mGet Started....");
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Container(
                        width: ScreenUtil().setWidth(150),
                        margin: EdgeInsets.only(
                          top: ScreenUtil().setHeight(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(18),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: ScreenUtil().setWidth(30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Homepage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        Offset begin = Offset(1.0, 0.0);
        Offset end = Offset.zero;
        Curve curve = Curves.ease;
        Animatable<Offset> tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        Animation offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 1500),
    );
  }
}
