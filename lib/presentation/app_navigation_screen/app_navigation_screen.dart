import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70002,
              body: SizedBox(
                  width: 375.h,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray400,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: theme.colorScheme.primary.withOpacity(1))
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration: AppDecoration.fillWhiteA,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapSplash(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text("lbl_splash".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_one".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageTwo(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_two".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageThree(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_three".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageFour(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_four".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageFiveContainer(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_page_five_container"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageSix(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_six".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageSeven(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_seven".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageNine(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_nine".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageTen(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_ten".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageEleven(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_eleven".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapPageTwelve(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_page_twelve".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary
                                                                .withOpacity(1),
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the splashScreen.
  onTapSplash(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the pageOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageOneScreen.
  onTapPageOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageOneScreen,
    );
  }

  /// Navigates to the pageTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageTwoScreen.
  onTapPageTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageTwoScreen,
    );
  }

  /// Navigates to the pageThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageThreeScreen.
  onTapPageThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageThreeScreen,
    );
  }

  /// Navigates to the pageFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageFourScreen.
  onTapPageFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageFourScreen,
    );
  }

  /// Navigates to the pageFiveContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageFiveContainerScreen.
  onTapPageFiveContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageFiveContainerScreen,
    );
  }

  /// Navigates to the pageSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageSixScreen.
  onTapPageSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageSixScreen,
    );
  }

  /// Navigates to the pageSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageSevenScreen.
  onTapPageSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageSevenScreen,
    );
  }

  /// Navigates to the pageNineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageNineScreen.
  onTapPageNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageNineScreen,
    );
  }

  /// Navigates to the pageTenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageTenScreen.
  onTapPageTen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageTenScreen,
    );
  }

  /// Navigates to the pageElevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageElevenScreen.
  onTapPageEleven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageElevenScreen,
    );
  }

  /// Navigates to the pageTwelveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the pageTwelveScreen.
  onTapPageTwelve(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageTwelveScreen,
    );
  }
}
