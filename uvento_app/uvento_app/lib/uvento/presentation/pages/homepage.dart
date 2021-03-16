import 'dart:ui';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:date_format/date_format.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizontal_calendar_widget/date_helper.dart';
import 'package:horizontal_calendar_widget/horizontal_calendar.dart';
import 'package:uvento_app/uvento/presentation/states/homepage_state.dart';
import 'package:uvento_app/uvento/presentation/widgets/homepage_svg_icon_constants.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ScrollController horizontalCalendarScrollController;
  @override
  void initState() {
    super.initState();
    horizontalCalendarScrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        titleSpacing: ScreenUtil().setWidth(25),
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            children: [
              SvgPicture.string(
                uvento_logo,
                height: ScreenUtil().setWidth(25),
                width: ScreenUtil().setWidth(25),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ScreenUtil().setWidth(10),
                  top: ScreenUtil().setWidth(5),
                ),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(20),
                          color: Colors.white),
                      children: [
                        TextSpan(text: tr('uve')),
                        TextSpan(
                          text: tr('nto'),
                          style: TextStyle(
                            color: Color(0xffffa700),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            child: SvgPicture.string(
              bell_icon,
              height: ScreenUtil().setWidth(20),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(25),
            ),
            child: SvgPicture.string(
              four_squares_icon,
              width: ScreenUtil().setWidth(20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Profile Row
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    tr("hello")+" "+tr("geralt"),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil().setSp(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Let\'s explore what\'s happening nearby',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xffFAE072),
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ui_person.jpg'),
                            radius: ScreenUtil().radius(30)),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: ScreenUtil().setHeight(24),
              ),
              // Calendar Row
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: HorizontalCalendar(
                        scrollController: horizontalCalendarScrollController,
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2100),
                        initialSelectedDates: [
                          DateTime.now(),
                        ],
                        labelOrder: [
                          LabelType.date,
                          LabelType.weekday,
                        ],
                        spacingBetweenDates: ScreenUtil().setWidth(17),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(15),
                        ),
                        selectedDateTextStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w600,
                        ),
                        selectedWeekDayTextStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w600,
                        ),
                        selectedDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFCCD00),
                        ),
                        maxSelectedDateCount: 1,
                        minSelectedDateCount: 1,
                        weekDayTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(12),
                        ),
                        dateTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: ScreenUtil().setWidth(29),
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(25),
                ),
                child: Text(tr("all_event"),
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.white,
                    )),
              ),
              Divider(
                color: Colors.transparent,
                height: ScreenUtil().setWidth(29),
              ),

              // All Events Row
              Container(
                margin: EdgeInsets.only(
                  left: ScreenUtil().setWidth(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: ScreenUtil().setWidth(100),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            EventCard(
                              icon: mic_icon,
                              title: tr("concert"),
                            ),
                            VerticalDivider(
                              width: ScreenUtil().setWidth(25),
                            ),
                            EventCard(
                              icon: racket_icon,
                              title: tr("sport"),
                            ),
                            VerticalDivider(
                              width: ScreenUtil().setWidth(25),
                            ),
                            EventCard(
                              icon: graduation_icon,
                              title: tr("education"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: ScreenUtil().setWidth(30),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(25),
                ),
                child: Text(tr("popular_events"),
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.white,
                    )),
              ),
              Divider(color: Colors.transparent),
              // Popular Events Row
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          PopularEventWidget(
                            date: DateTime.now(),
                            location: 'Greenfields, Sector 42, Faridabad',
                            photoPath: 'assets/images/crowd_photo.jpg',
                            title: 'Sports Meet in Galaxy Field',
                          ),
                          Divider(
                            color: Colors.transparent,
                            height: ScreenUtil().setHeight(25),
                          ),
                          PopularEventWidget(
                            date: DateTime.now(),
                            location: 'Greenfields, Sector 22, Faridabad',
                            photoPath: 'assets/images/art_photo.png',
                            title: 'Art & Meet in Street Plaza',
                          ),
                          Divider(
                            color: Colors.transparent,
                            height: ScreenUtil().setHeight(25),
                          ),
                          PopularEventWidget(
                            date: DateTime.now(),
                            location: 'Greenfields, Sector 42, Faridabad',
                            photoPath: 'assets/images/concert_photo.png',
                            title: 'Youth Music in Galleria',
                          ),
                          Divider(
                            color: Colors.transparent,
                            height: ScreenUtil().setHeight(25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(10),
          horizontal: ScreenUtil().setWidth(50),
        ),
        color: Color(0xff152F3E),
        child: BubbleBottomBar(
          elevation: 0,
          opacity: 1.0,
          backgroundColor: Color(0xff152F3E),
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(ScreenUtil().radius(20))),
          currentIndex: homepageState.state.currentPageIndex,
          hasInk: true,
          inkColor: Color(0xff15223A),
          onTap: (index) {
            homepageState.setState((s) => s.currentPageIndex = index);
          },
          iconSize: ScreenUtil().setWidth(25),
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
              backgroundColor: Color(0xff102733),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Color(0xffFFA700),
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xffFFA700),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: Color(0xff102733),
              title: Text(
                'Search',
                style: TextStyle(
                  color: Color(0xffFFA700),
                ),
              ),
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Color(0xffFFA700),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: Color(0xff102733),
              title: Text(
                'Favorite',
                style: TextStyle(
                  color: Color(0xffFFA700),
                ),
              ),
              icon: Icon(
                Icons.star_border,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.star_border,
                color: Color(0xffFFA700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularEventWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  final String location;
  final String photoPath;

  const PopularEventWidget(
      {Key key, this.title, this.date, this.location, this.photoPath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff283F4D),
            ),
            child: Row(children: [
              Expanded(
                flex: 6,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 100,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: ScreenUtil().setWidth(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil().setSp(16)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: SvgPicture.string(
                                calendar_icon,
                                alignment: Alignment.center,
                                height: ScreenUtil().setWidth(15),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(10),
                                ),
                                child: Text(
                                  formatDate(date, [M, ' ', d, ', ', yyyy]),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: ScreenUtil().setWidth(2.5),
                              ),
                              child: SvgPicture.string(
                                location_icon,
                                alignment: Alignment.center,
                                height: ScreenUtil().setWidth(15),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: ScreenUtil().setWidth(10),
                                ),
                                child: Text(
                                  location,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: ScreenUtil().setWidth(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(photoPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final icon;
  final title;

  const EventCard({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(131),
      height: ScreenUtil().setWidth(102),
      // margin: EdgeInsets.only(
      //   right: ScreenUtil().setWidth(25),
      // ),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.string(
              icon,
              height: ScreenUtil().setWidth(25),
              width: ScreenUtil().setWidth(25),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenUtil().setSp(16),
            ),
          )
        ],
      ),
    );
  }
}
