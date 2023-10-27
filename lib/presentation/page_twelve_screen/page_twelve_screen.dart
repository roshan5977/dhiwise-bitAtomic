import 'bloc/page_twelve_bloc.dart';
import 'models/page_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';

class PageTwelveScreen extends StatelessWidget {
  const PageTwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageTwelveBloc>(
      create: (context) => PageTwelveBloc(PageTwelveState(
        pageTwelveModelObj: PageTwelveModel(),
      ))
        ..add(PageTwelveInitialEvent()),
      child: PageTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageTwelveBloc, PageTwelveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      top: 62.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                          height: 60.v,
                          leadingWidth: double.maxFinite,
                          leading: AppbarImage1(
                            imagePath: ImageConstant.imgArrowleft1,
                            margin: EdgeInsets.only(
                              left: 28.h,
                              right: 324.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 36.v),
                          child: Text(
                            "lbl_awake".tr,
                            style: CustomTextStyles.titleLarge20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          right: 31.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 267.v,
                              width: 336.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 5.h,
                                        top: 6.v,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "lbl_august".tr,
                                            style:
                                                CustomTextStyles.titleLarge20,
                                          ),
                                          SizedBox(height: 22.v),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_sun".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.h),
                                                child: Text(
                                                  "lbl_mon".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text(
                                                  "lbl_teu".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 24.h),
                                                child: Text(
                                                  "lbl_wed".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 19.h),
                                                child: Text(
                                                  "lbl_thu".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 23.h),
                                                child: Text(
                                                  "lbl_fri".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 31.h),
                                                child: Text(
                                                  "lbl_sat".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5.h,
                                        vertical: 12.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillBlueGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 70.v,
                                              right: 26.h,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 23.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 27.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 17.v,
                                              right: 26.h,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 20.h,
                                                    bottom: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 24.h,
                                                    bottom: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 23.h,
                                                    top: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 18.h,
                                                    bottom: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 19.h,
                                                    bottom: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    left: 27.h,
                                                    bottom: 2.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 19.v,
                                              right: 26.h,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 18.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 27.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 22.v,
                                              right: 26.h,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 22.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 22.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 22.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 27.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 17.v,
                                              right: 26.h,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 22.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 19.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      left: 27.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blueGray100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 21.v),
                              child: Divider(
                                color: theme.colorScheme.onPrimary,
                                indent: 7.h,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            Text(
                              "lbl_habit_score".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 24.v),
                            SizedBox(
                              height: 113.v,
                              width: 119.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 113.v,
                                        width: 119.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.cyan600
                                              .withOpacity(0.53),
                                          borderRadius: BorderRadius.circular(
                                            59.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 106.v,
                                      width: 111.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 106.v,
                                              width: 111.h,
                                              decoration: BoxDecoration(
                                                color: theme.colorScheme.primary
                                                    .withOpacity(1),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  55.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_5".tr,
                                              style: CustomTextStyles
                                                  .displaySmallRoboto,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.v),
                              child: Divider(
                                color: theme.colorScheme.onPrimary,
                                indent: 7.h,
                              ),
                            ),
                            SizedBox(height: 25.v),
                            Text(
                              "lbl_streak".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 48.h,
                                  top: 35.v,
                                  right: 71.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text(
                                        "lbl_current".tr,
                                        style: CustomTextStyles.bodySmall10,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text(
                                        "lbl_best".tr,
                                        style: CustomTextStyles.bodySmall10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 36.h,
                                  right: 49.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_0_days".tr,
                                      style: CustomTextStyles.titleLargeCyan600,
                                    ),
                                    Text(
                                      "lbl_3_days".tr,
                                      style: CustomTextStyles.titleLargeCyan600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 56.v),
                              child: Divider(
                                color: theme.colorScheme.onPrimary,
                                endIndent: 7.h,
                              ),
                            ),
                            SizedBox(height: 24.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "msg_streak_challenge".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 24.v,
                                right: 18.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 54.adaptSize,
                                    width: 54.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 53.v,
                                            width: 54.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.blueGray700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                9.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgBatchicon241,
                                          height: 54.v,
                                          width: 43.h,
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.3,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgOip41,
                                      height: 52.v,
                                      width: 54.h,
                                      radius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.3,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgOip42,
                                      height: 52.v,
                                      width: 54.h,
                                      radius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 53.v,
                                    width: 55.h,
                                    margin: EdgeInsets.only(
                                      left: 35.h,
                                      top: 1.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 53.v,
                                            width: 54.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.blueGray700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                9.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.3,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgOip42,
                                            height: 52.v,
                                            width: 54.h,
                                            radius: BorderRadius.circular(
                                              10.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 11.v,
                                right: 20.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_1_day".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 43.h),
                                    child: Text(
                                      "lbl_7_days".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.h),
                                    child: Text(
                                      "lbl_21_days".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 37.h),
                                    child: Text(
                                      "lbl_60_days".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
