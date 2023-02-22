import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample_flutter_project/pages/page-dispatcher/page-dispatcher.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1624),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ablaze Demo',
          theme: ThemeData(
            fontFamily: 'SFProText',
            hintColor: const Color(0xffB5B5B5),
            colorScheme: ColorScheme(
              background: Colors.white,
              onBackground: const Color(0xff33B7AA),
              brightness: Brightness.light,
              error: const Color(0xffEB0000),
              onError: Colors.white,
              primary: Colors.black,
              onPrimary: Colors.white,
              secondary: const Color(0xffFABB18),
              onSecondary: Colors.black,
              tertiary: const Color(0xffF4F4F4),
              onTertiary: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black,
              shadow: Colors.black.withOpacity(0.15),
            ),
            textTheme: TextTheme(
              headlineLarge: TextStyle(
                fontSize: 48.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              headlineMedium: TextStyle(
                fontSize: 42.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              headlineSmall: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              titleLarge: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
              ),
              titleMedium: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
              titleSmall: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xffB5B5B5),
              ),
              bodyLarge: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
              ),
              bodySmall: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
              size: 64.sp,
            ),
          ),
          home: child,
          // home: const TasksPage(),
        );
      },
      child: const PageDispatcherPage(),
    );
  }
}
