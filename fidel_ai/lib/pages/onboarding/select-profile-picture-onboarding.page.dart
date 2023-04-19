import 'dart:math';

import 'package:fidel_ai/widgets/fidel-button.widget.dart';
import 'package:fidel_ai/widgets/glowing-avatar.widget.dart';
import 'package:fidel_ai/widgets/powered-by-abalze.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';

class SelectProfilePictureOnboardingPage extends StatelessWidget {
  SelectProfilePictureOnboardingPage({Key? key}) : super(key: key);

  final logger = Logger();
  final random = Random();
  final List images = <String>[
    'assets/images/lady_picture_1.png',
    'assets/images/lady_picture_2.png',
    'assets/images/lady_picture_3.png',
    'assets/images/lady_picture_4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 64.sp,
                              height: 63.sp,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(13.sp)),
                              child: SvgPicture.asset(
                                  'assets/images/profile_placeholder.svg'),
                            ),
                            Container(
                              width: 273.sp,
                              height: 49.sp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(13.sp),
                              ),
                              child: Text(
                                'Guest2112',
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 47.sp,
                      ),
                      Text(
                        'Select profile picture',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(height: 1),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Container(
                        height: 324.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(107, 46, 46, 46),
                          borderRadius: BorderRadius.circular(28.sp),
                        ),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 28.sp,
                            mainAxisSpacing: 28.sp,
                          ),
                          itemCount: 12,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.sp, vertical: 29.sp),
                          itemBuilder: (context, index) => GlowingAvatarWidget(
                            avatar:
                                Image.asset(images[random.nextInt(images.length)]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 23.sp,
                      ),
                      Text(
                        'Select your language',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(height: 1),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 29.sp,
                      ),
                      FidelButton(
                        onTap: () => logger.i('Education Button'),
                        text: 'Education',
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      FidelButton(
                        onTap: () => logger.i('Game Button'),
                        text: 'Game',
                        buttonType: FidelButtonType.secondary,
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      FidelButton(
                        onTap: () => logger.i('Game Button'),
                        text: 'Game',
                        buttonType: FidelButtonType.secondary,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 17.sp,
                  ),
                  child: const PoweredByAblazeWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
