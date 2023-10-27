import 'bloc/page_five_bloc.dart';
import 'models/page_five_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:roshan_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PageFivePage extends StatelessWidget {
  const PageFivePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageFiveBloc>(
      create: (context) => PageFiveBloc(PageFiveState(
        pageFiveModelObj: PageFiveModel(),
      ))
        ..add(PageFiveInitialEvent()),
      child: PageFivePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageFiveBloc, PageFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.black90002,
            appBar: CustomAppBar(
              title: AppbarTitle(
                text: "lbl_hey_roshan".tr,
                margin: EdgeInsets.only(left: 43.h),
              ),
              actions: [
                AppbarImage(
                  imagePath: ImageConstant.imgOpenwavinghandemojisvg,
                  margin: EdgeInsets.fromLTRB(9.h, 17.v, 8.h, 8.v),
                ),
                AppbarImage(
                  imagePath: ImageConstant.imgCircleprofilepng,
                  margin: EdgeInsets.only(
                    left: 73.h,
                    top: 8.v,
                    right: 53.h,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 21.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 31.v,
                    width: 161.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_today_s_habits".tr,
                            style: CustomTextStyles.headlineSmallIrishGrover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_today_s_habits".tr,
                            style: CustomTextStyles.headlineSmallIrishGrover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: SizedBox(
                      width: 119.h,
                      child: Divider(
                        color: appTheme.gray500,
                        indent: 3.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "msg_0_of_0_completed".tr,
                      style: CustomTextStyles.bodyMedium15,
                    ),
                  ),
                  Container(
                    height: 83.v,
                    width: 196.h,
                    margin: EdgeInsets.only(
                      left: 54.h,
                      top: 94.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_no_habits_for_today".tr,
                            style: CustomTextStyles.titleLarge23,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImageprocessin,
                          height: 60.v,
                          width: 82.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 31.h),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 14.v,
                    ),
                    child: Text(
                      "msg_there_is_no_habits".tr,
                      style: CustomTextStyles.bodyMedium15,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 108.h,
                    text: "lbl_create".tr,
                    margin: EdgeInsets.only(
                      left: 85.h,
                      top: 15.v,
                      bottom: 5.v,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgPlussolid1,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: CustomTextStyles.bodyMedium15,
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
