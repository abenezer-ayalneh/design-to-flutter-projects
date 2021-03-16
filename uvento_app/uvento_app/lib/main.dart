import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uvento_app/uvento/presentation/pages/get_started.dart';
import 'package:uvento_app/uvento/presentation/states/homepage_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'uvento/presentation/pages/homepage.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [Locale('am', ''), Locale('en', '')],
    path: 'assets/translations', // <-- change patch to your
    startLocale: Locale('en', ''),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
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
                return ScreenUtilInit(builder: () {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Uvento App',
                    theme: ThemeData(
                      fontFamily: 'Muli',
                      backgroundColor: Color(0xff102733),
                      appBarTheme: AppBarTheme(
                        color: Color(0xff102733),
                        elevation: 0,
                      ),
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                    ),
                    home: GetStarted(),
                  );
                });
              });
        });
  }
}
