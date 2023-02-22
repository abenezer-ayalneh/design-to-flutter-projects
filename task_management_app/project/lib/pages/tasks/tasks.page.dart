import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sample_flutter_project/pages/page-dispatcher/page-dispatcher.controller.dart';
import 'package:sample_flutter_project/pages/page-dispatcher/page-dispatcher.page.dart';
import 'package:sample_flutter_project/widgets/horizontal-calendar.widget.dart';
import 'package:sample_flutter_project/widgets/stepper.widget.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final PageDispatcherController _pageDispatcherController =
      Get.find<PageDispatcherController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.sp, 10.sp, 40.sp, 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageDispatcherPage()),
                        (route) => false,
                      ),
                      icon: const Icon(
                        Icons.chevron_left,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/menu-icon.svg',
                      height: 23.sp,
                      // width: 42.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 40.sp, right: 40.sp, bottom: 20.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "April 10, 2021",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              "Today",
                              style: Theme.of(context).textTheme.headlineLarge,
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () => {
                            // TODO add tasks functionality goes here
                          },
                          borderRadius: BorderRadius.circular(20.sp),
                          child: Ink(
                            width: 230.sp,
                            height: 88.sp,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20.sp),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_rounded,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 6.sp,
                                ),
                                Text(
                                  'Add Tasks',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    SizedBox(
                      height: 111.sp,
                      // color: Colors.grey[300],
                      child: const HorizontalCalendarWidget(),
                    ),
                    SizedBox(
                      height: 36.sp,
                    ),
                    const StepperWidget(),
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
