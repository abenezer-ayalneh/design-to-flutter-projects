import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app_new/presentation/widgets/subtitle_text.dart';
import 'package:podcast_app_new/presentation/widgets/title_text.dart';
import 'package:podcast_app_new/presentation/widgets/transparent_divider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/slider_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(19),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: ScreenUtil().setWidth(30),
                            color: Color(0xff5B5E6F),
                          )
                        ],
                      ),
                      TransparentDivider(50),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: List.generate(
                              4,
                              (index) => Container(
                                height: ScreenUtil().setHeight(8),
                                width: ScreenUtil().setWidth(8),
                                margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(2),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == 2
                                      ? Colors.white
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.transparent,
                            width: ScreenUtil().setWidth(25),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleText(
                                'Tabitha Nauser',
                                fontSize: 11,
                              ),
                              TransparentDivider(10),
                              TitleText(
                                'Bulletproof',
                                fontSize: 31,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff13131A),
                  border: Border.all(
                    color: Color(0xff13131A),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
