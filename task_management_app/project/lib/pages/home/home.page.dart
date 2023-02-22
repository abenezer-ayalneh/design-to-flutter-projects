import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_flutter_project/pages/page-dispatcher/page-dispatcher.controller.dart';
import 'package:sample_flutter_project/pages/tasks/tasks.page.dart';
import 'package:sample_flutter_project/widgets/cards/square-card.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;
  late TextEditingController _searchingTextFieldController;
  final PageDispatcherController _pageDispatcherController =
      Get.find<PageDispatcherController>();

  @override
  void initState() {
    super.initState();
    _searchingTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchingTextFieldController.dispose();
  }

  changeSelectedIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _selectedTabIndex == 0
            ? SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(33.sp, 10.sp, 33.sp, 10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 48.sp,
                            backgroundImage: const AssetImage(
                                'assets/images/female-placeholder.jpg'),
                          ),
                          SvgPicture.asset(
                            'assets/icons/menu-icon.svg',
                            height: 23.sp,
                            // width: 42.sp,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Hello, Jessica!',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "You've got\n8 tasks today",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 120.sp,
                        child: TextField(
                          controller: _searchingTextFieldController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 64.sp,
                              color: Colors.black87,
                            ),
                            hintText: 'Search something...',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xffB5B5B5),
                                ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.sp,
                        ),
                        height: 150.sp,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Theme.of(context).colorScheme.shadow,
                              blurRadius: 10,
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Project time tracker",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "You can start tracking.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Theme.of(context).hintColor),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                _selectedTabIndex = 1;
                              }),
                              child: Container(
                                alignment: Alignment.center,
                                width: 72.sp,
                                height: 72.sp,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "My tasks",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          Text(
                            "Today",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                          ),
                          Text(
                            "Upcoming",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                          ),
                          Text(
                            "Later",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Theme.of(context).hintColor,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        // padding: const EdgeInsets.symmetric(horizontal: 10),
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          // ignore: prefer_const_constructors
                          SquareCardWidget(
                            progressPercentage: 35,
                            title: 'Medical LP',
                            subTitle: 'Make a landing page and mobile app',
                          ),
                          SquareCardWidget(
                            progressPercentage: 42,
                            progressIndicatorBackgroundColor: Colors.white,
                            title: 'Icon Design',
                            subTitle: 'Design the mobile theme icon',
                            backgroundColor: Colors.black,
                            titleColor: Colors.white,
                            subtitleColor: Colors.grey[350],
                          ),
                          SquareCardWidget(
                            progressPercentage: 35,
                            progressIndicatorBackgroundColor: Colors.white,
                            title: 'Medical LP',
                            subTitle: 'Make a landing page and mobile app',
                            backgroundColor: Colors.black,
                            titleColor: Colors.white,
                            subtitleColor: Colors.grey[350],
                          ),
                          // ignore: prefer_const_constructors
                          SquareCardWidget(
                            progressPercentage: 35,
                            title: 'Medical LP',
                            subTitle: 'Make a landing page and mobile app',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            : const TasksPage(),
      ),
    );
  }
}
