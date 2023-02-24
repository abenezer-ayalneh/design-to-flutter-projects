import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app_new/consts/consts.dart';
import 'package:podcast_app_new/presentation/widgets/subtitle_text.dart';
import 'package:podcast_app_new/presentation/widgets/title_text.dart';
import 'package:podcast_app_new/states/onboarding_page_state.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();

    return Container(
      decoration: BoxDecoration(gradient: backgroundColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              // Onboarding photo and Skip button
              Expanded(
                flex: 8,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      children: List.generate(
                        4,
                        (index) {
                          return Image.asset(
                            "assets/images/radio.png",
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      onPageChanged: (index) {
                        onboarding_page_state
                            .setState((s) => s.current_page_index = index);
                      },
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: ScreenUtil().setWidth(22),
                              top: ScreenUtil().setHeight(30),
                            ),
                            child: InkWell(
                              onTap: () {
                                _pageController.animateToPage(
                                  3,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Color(0xffFB6580),
                                  fontFamily: "Circular_Std",
                                  fontWeight: FontWeight.w400,
                                  fontSize: ScreenUtil().setSp(14),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TitleText(
                        "Tune your Radio",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SubtitleText(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna",
                          shouldCenter: true,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Circle dots, previous, next
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20),
                      ),
                      width: ScreenUtil().setWidth(60),
                      child: GestureDetector(
                        onTap: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.ease,
                          );
                        },
                        child: Text(
                          'Previous',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Color(0xffFB6580),
                            fontFamily: "Circular_Std",
                            fontWeight: FontWeight.w400,
                            fontSize: ScreenUtil().setSp(14),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) {
                          return Container(
                            height: ScreenUtil().setHeight(10),
                            width: ScreenUtil().setWidth(10),
                            margin: EdgeInsets.all(
                              ScreenUtil().setWidth(5),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: onboarding_page_state
                                          .state.current_page_index ==
                                      index
                                  ? Color(0xffF11775)
                                  : Color(0xff30303C),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: ScreenUtil().setWidth(10),
                      ),
                      width: ScreenUtil().setWidth(60),
                      child: GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.ease,
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Color(0xffFB6580),
                            fontFamily: "Circular_Std",
                            fontWeight: FontWeight.w400,
                            fontSize: ScreenUtil().setSp(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
