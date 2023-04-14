import 'package:fidel_ai/pages/onboarding/education-or-game-onboarding.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 919),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Poppins',
            textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontSize: 65.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              titleMedium: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              titleSmall: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              bodyLarge:  TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              bodyMedium:  TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              bodySmall:  TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),

            ),
            colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xffF8B936),
              onPrimary: Color(0xff000000),
              secondary: Color(0xff008867),
              onSecondary: Color(0xffffffff),
              error: Color.fromARGB(255, 44, 4, 7),
              onError: Color(0xffFB1A2D),
              background: Color(0xff0D0D0D),
              onBackground: Color(0xffffffff),
              surface: Color(0xff2E2E2E),
              onSurface: Color(0xffffffff),
            ),
            scaffoldBackgroundColor: const Color(0xff0D0D0D),
          ),
          home: child,
        );
      },
      child: const EducationOrGameOnboardingPage(),
    );
  }
}
