import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';

class SquareCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final int progressPercentage;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? progressIndicatorBackgroundColor;

  const SquareCardWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.progressPercentage,
    this.backgroundColor,
    this.titleColor,
    this.subtitleColor,
    this.progressIndicatorBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
      "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
    ];
    return SizedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.sp,
          vertical: 40.sp,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color:
                            titleColor ?? Theme.of(context).colorScheme.primary,
                      ),
                ),
                SvgPicture.asset(
                  'assets/icons/two-dots-icon.svg',
                  height: 10,
                  color: titleColor ?? Theme.of(context).colorScheme.primary,
                )
              ],
            ),
            const Spacer(),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: subtitleColor ?? Theme.of(context).hintColor,
                  ),
            ),
            const Spacer(),
            ImageStack(
              imageList: images,
              totalCount: images.length,
              imageRadius: 48.sp,
              imageCount: 4,
              imageBorderWidth: 1,
              extraCountBorderColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              extraCountTextStyle: TextStyle(
                color: titleColor ?? Colors.black,
              ),
              imageBorderColor: backgroundColor ?? Colors.white,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Progress",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  '$progressPercentage%',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: progressIndicatorBackgroundColor ??
                            Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.sp),
              child: LinearProgressIndicator(
                backgroundColor: progressIndicatorBackgroundColor
                        ?.withOpacity(0.3) ??
                    Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                color: progressIndicatorBackgroundColor ??
                    Theme.of(context).colorScheme.secondary,
                value: progressPercentage.toDouble() / 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
