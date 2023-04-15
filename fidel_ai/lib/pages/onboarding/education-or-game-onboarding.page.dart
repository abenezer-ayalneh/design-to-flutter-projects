import 'package:fidel_ai/widgets/fidel-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class EducationOrGameOnboardingPage extends StatelessWidget {
  EducationOrGameOnboardingPage({super.key});

  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 428.sp,
                        height: 379.sp,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/kid_picture_heart_hand.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 52.sp,
                      ),
                      SizedBox(
                        width: 194.sp,
                        child: Text(
                          'What do\nyou Like to do',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(height: 1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      SizedBox(
                        width: 340.sp,
                        child: Text(
                          'The platforms that you are going to use for adobe premier pro.',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 15.sp),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 35.sp,
                      ),
                      FidelButton(onTap: () => logger.i('Education Button'), text: 'Education', ),
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
            Padding(
              padding: EdgeInsets.only(
                bottom: 17.sp,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Powered by Ablaze Labs',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
