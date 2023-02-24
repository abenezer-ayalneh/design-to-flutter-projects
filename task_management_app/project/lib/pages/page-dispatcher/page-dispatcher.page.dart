import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sample_flutter_project/pages/page-dispatcher/page-dispatcher.controller.dart';

import '../home/home.page.dart';

class PageDispatcherPage extends StatefulWidget {
  const PageDispatcherPage({super.key});

  @override
  State<PageDispatcherPage> createState() => _PageDispatcherPageState();
}

class _PageDispatcherPageState extends State<PageDispatcherPage> {
  int _selectedTabIndex = 0;
  final PageDispatcherController controller =
      Get.put(PageDispatcherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTabIndex,
        children: [
          const HomePage(),
          Center(
            child: SvgPicture.asset(
              "assets/icons/chart-icon.svg",
              height: 300.sp,
              width: 300.sp,
              semanticsLabel: 'A red up arrow',
            ),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/users-icon.svg",
              height: 300.sp,
              width: 300.sp,
              semanticsLabel: 'A red up arrow',
            ),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/file-icon.svg",
              height: 300.sp,
              width: 300.sp,
              semanticsLabel: 'A red up arrow',
            ),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/setting-icon.svg",
              height: 300.sp,
              width: 300.sp,
              semanticsLabel: 'A red up arrow',
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        // TODO avoid using margin and look for a better way to implement it
        margin: const EdgeInsets.only(bottom: 15),
        height: 144.sp,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Container(
              height: 144.sp,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: _selectedTabIndex == 0 ? Colors.black : Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  )),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 0;
                  });
                },
                icon: _selectedTabIndex == 0
                    ? SvgPicture.asset("assets/icons/home-icon-active.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow')
                    : SvgPicture.asset("assets/icons/home-icon.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 144.sp,
              // width: 60,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: _selectedTabIndex == 1 ? Colors.black : Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 1;
                  });
                },
                icon: _selectedTabIndex == 1
                    ? SvgPicture.asset("assets/icons/chart-icon-active.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow')
                    : SvgPicture.asset("assets/icons/chart-icon.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 144.sp,
              // width: 60,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: _selectedTabIndex == 2 ? Colors.black : Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 2;
                  });
                },
                icon: _selectedTabIndex == 2
                    ? SvgPicture.asset("assets/icons/users-icon-active.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow')
                    : SvgPicture.asset("assets/icons/users-icon.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 144.sp,
              // width: 60,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: _selectedTabIndex == 3 ? Colors.black : Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 3;
                  });
                },
                icon: _selectedTabIndex == 3
                    ? SvgPicture.asset("assets/icons/file-icon-active.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow')
                    : SvgPicture.asset("assets/icons/file-icon.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 144.sp,
              // width: 60,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: _selectedTabIndex == 4 ? Colors.black : Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 4;
                  });
                },
                icon: _selectedTabIndex == 4
                    ? SvgPicture.asset("assets/icons/setting-icon-active.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow')
                    : SvgPicture.asset("assets/icons/setting-icon.svg",
                        height: 64.sp,
                        width: 64.sp,
                        semanticsLabel: 'A red up arrow'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
