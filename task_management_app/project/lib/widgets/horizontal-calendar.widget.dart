import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HorizontalCalendarWidget extends StatelessWidget {
  const HorizontalCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final DateTime threeDaysAgo = DateTime.now().subtract(const Duration(
      days: 3,
    ));

    return ListView.builder(
      itemCount: 60,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        final currentDay = threeDaysAgo.add(Duration(days: index));
        final isToday = currentDay.year == today.year &&
            currentDay.month == today.month &&
            currentDay.day == today.day;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 26.sp),
          child: Column(
            children: [
              Text(
                DateFormat.E().format(currentDay),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: isToday
                          ? Theme.of(context).colorScheme.secondary
                          : const Color(0xff808080),
                      fontWeight: isToday ? FontWeight.w600 : FontWeight.w400,
                    ),
              ),
              SizedBox(height: 20.sp),
              Text(
                DateFormat.d().format(currentDay),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: isToday
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.primary,
                      fontWeight: isToday ? FontWeight.w600 : FontWeight.w400,
                    ),
              ),
              SizedBox(height: 5.sp),
              isToday
                  ? Container(
                      height: 10.sp,
                      width: 10.sp,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  : Container(),
            ],
          ),
        );
      }),
    );
  }
}
