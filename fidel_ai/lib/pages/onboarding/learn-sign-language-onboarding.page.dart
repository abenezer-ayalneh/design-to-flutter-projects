import 'package:fidel_ai/utils/routes.dart';
import 'package:fidel_ai/widgets/fidel-button.widget.dart';
import 'package:fidel_ai/widgets/powered-by-abalze.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class LearnSignLanguageOnboardingPage extends StatelessWidget {
  LearnSignLanguageOnboardingPage({Key? key}) : super(key: key);
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.sp),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 397.sp,
                        height: 320.sp,
                        margin: EdgeInsets.only(left: 31.sp),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/kid_picture_phone.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 62.sp,
                      ),
                      Text(
                        'Learn\nSign Language',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(height: 1),
                        textAlign: TextAlign.center,
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
                        height: 13.sp,
                      ),
                      FidelButton(
                        onTap: () => Navigator.pushNamed(context, SELECT_PROFILE_PICTURE_ONBOARDING_PAGE),
                        text: 'Get started',
                        buttonType: FidelButtonType.secondary,
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      FidelButton(
                        onTap: () => logger.i('Learn as a guest Button'),
                        text: 'Learn as a guest',
                      ),
                      SizedBox(
                        height: 14.sp,
                      ),
                      FidelButton(
                        onTap: () => logger.i('Login with google Button'),
                        text: 'Login with google',
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
