import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uvento_app_new/uvento/presentation/pages/get_started.dart';
import 'package:uvento_app_new/uvento/presentation/states/homepage_state.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('et', 'AM'), Locale('en', 'US')],
      path: 'assets/translations',
      startLocale: const Locale('et', 'AM'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          Inject(() => HomepageState()),
        ],
        builder: (context) {
          return StateBuilder(
              observeMany: [() => homepageState],
              builder: (context, setter) {
                return ScreenUtilInit(
                  builder: (context, child) {
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: 'Uvento App',
                      theme: ThemeData(
                        fontFamily: 'Muli',
                        backgroundColor: const Color(0xff102733),
                        appBarTheme: const AppBarTheme(
                          color: Color(0xff102733),
                          elevation: 0,
                        ),
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                      ),
                      home: const GetStarted(),
                    );
                  },
                );
              });
        });
  }
}
