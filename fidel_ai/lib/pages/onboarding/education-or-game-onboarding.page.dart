import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationOrGameOnboardingPage extends StatelessWidget {
  const EducationOrGameOnboardingPage({super.key});

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
                      Container(
                        height: 52.sp,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: InkWell(
                          onTap: () => print('object'),
                          borderRadius: BorderRadius.circular(15.sp),
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      FilledButton(
                        onPressed: () => print('button'),
                        child: Text('Education'),
                        style: ButtonStyle(),
                      ),
                      // Container(
                      //   height: 52.sp,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15.sp),
                      //   ),
                      //   child: InkWell(
                      //     onTap: () => print('object'),
                      //     borderRadius: BorderRadius.circular(15.sp),
                      //     child: Ink(
                      //       decoration: BoxDecoration(
                      //         color: Theme.of(context).colorScheme.secondary,
                      //         borderRadius: BorderRadius.circular(15.sp),
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
