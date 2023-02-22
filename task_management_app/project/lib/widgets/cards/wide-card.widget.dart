import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_stack/image_stack.dart';

class WideCardWidget extends StatelessWidget {
  final bool isActive;
  const WideCardWidget(
      {super.key, required this.cardData, required this.isActive});

  final Map<String, dynamic> cardData;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            width: double.infinity,
            height: 300.sp,
            padding: EdgeInsets.all(40.sp),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(40.sp),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardData["title"],
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      cardData["time"],
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 320.sp,
                        child: Text(
                          cardData["subtitle"],
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                              ),
                        )),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageStack(
                      imageList: cardData["participants"],
                      totalCount: cardData["participants"].length,
                      imageRadius: 64.sp,
                      imageCount: 5,
                      imageBorderWidth: 4.sp,
                      extraCountBorderColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      extraCountTextStyle:
                          Theme.of(context).textTheme.bodySmall!,
                      imageBorderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    InkWell(
                      onTap: () {
                        //TODO add button functionality here
                      },
                      child: Container(
                        height: 72.sp,
                        width: 72.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/check-icon.svg",
                          height: 18.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(40.sp, 0, 40.sp, 40.sp),
            // color: Colors.pink[300],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardData["title"],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      cardData["time"],
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 320.sp,
                        child: Text(
                          cardData["subtitle"],
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                              ),
                        )),
                  ],
                ),
              ],
            ),
          );
  }
}
