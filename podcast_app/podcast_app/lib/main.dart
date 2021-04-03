import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast_app/presenation/pages/login_page.dart';
import 'package:podcast_app/presenation/pages/main_page.dart';
import 'package:podcast_app/presenation/pages/onboarding_page.dart';
import 'package:podcast_app/states/login_page_state.dart';
import 'package:podcast_app/states/onboarding_page_state.dart';
import 'package:podcast_app/states/signup_page_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return Injector(
          inject: [
            Inject(() => LoginPageState()),
            Inject(() => SignupPageState()),
            Inject(() => OnboardingPageState()),
          ],
          builder: (context) {
            return StateBuilder(
              observeMany: [
                () => login_page_state,
                () => signup_page_state,
                () => onboarding_page_state,
              ],
              builder: (context, _) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  ),
                  home: LoginPage(),
                );
              },
            );
          });
    });
  }
}
