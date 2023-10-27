import 'package:flutter/material.dart';
import 'package:roshan_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:roshan_s_application2/presentation/page_one_screen/page_one_screen.dart';
import 'package:roshan_s_application2/presentation/page_two_screen/page_two_screen.dart';
import 'package:roshan_s_application2/presentation/page_three_screen/page_three_screen.dart';
import 'package:roshan_s_application2/presentation/page_four_screen/page_four_screen.dart';
import 'package:roshan_s_application2/presentation/page_five_container_screen/page_five_container_screen.dart';
import 'package:roshan_s_application2/presentation/page_six_screen/page_six_screen.dart';
import 'package:roshan_s_application2/presentation/page_seven_screen/page_seven_screen.dart';
import 'package:roshan_s_application2/presentation/page_nine_screen/page_nine_screen.dart';
import 'package:roshan_s_application2/presentation/page_ten_screen/page_ten_screen.dart';
import 'package:roshan_s_application2/presentation/page_eleven_screen/page_eleven_screen.dart';
import 'package:roshan_s_application2/presentation/page_twelve_screen/page_twelve_screen.dart';
import 'package:roshan_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String pageOneScreen = '/page_one_screen';

  static const String pageTwoScreen = '/page_two_screen';

  static const String pageThreeScreen = '/page_three_screen';

  static const String pageFourScreen = '/page_four_screen';

  static const String pageFivePage = '/page_five_page';

  static const String pageFiveContainerScreen = '/page_five_container_screen';

  static const String pageSixScreen = '/page_six_screen';

  static const String pageSevenScreen = '/page_seven_screen';

  static const String pageNineScreen = '/page_nine_screen';

  static const String pageTenScreen = '/page_ten_screen';

  static const String pageElevenScreen = '/page_eleven_screen';

  static const String pageTwelveScreen = '/page_twelve_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        pageOneScreen: PageOneScreen.builder,
        pageTwoScreen: PageTwoScreen.builder,
        pageThreeScreen: PageThreeScreen.builder,
        pageFourScreen: PageFourScreen.builder,
        pageFiveContainerScreen: PageFiveContainerScreen.builder,
        pageSixScreen: PageSixScreen.builder,
        pageSevenScreen: PageSevenScreen.builder,
        pageNineScreen: PageNineScreen.builder,
        pageTenScreen: PageTenScreen.builder,
        pageElevenScreen: PageElevenScreen.builder,
        pageTwelveScreen: PageTwelveScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
