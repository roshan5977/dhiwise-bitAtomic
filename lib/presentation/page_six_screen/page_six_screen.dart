import 'bloc/page_six_bloc.dart';
import 'models/page_six_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:roshan_s_application2/widgets/custom_elevated_button.dart';
import 'package:roshan_s_application2/widgets/custom_text_form_field.dart';

class PageSixScreen extends StatelessWidget {
  const PageSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageSixBloc>(
      create: (context) => PageSixBloc(PageSixState(
        pageSixModelObj: PageSixModel(),
      ))
        ..add(PageSixInitialEvent()),
      child: PageSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: double.maxFinite,
          leading: AppbarImage1(
            imagePath: ImageConstant.imgArrowleft1,
            margin: EdgeInsets.fromLTRB(24.h, 9.v, 328.h, 9.v),
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 18.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 46.h,
                right: 33.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_create_habit".tr,
                      style: CustomTextStyles.displaySmallRoboto38,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 21.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.fillGray800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Text(
                      "lbl_title".tr,
                      style: CustomTextStyles.titleLargeGray60004,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 30.v,
                    ),
                    child: Text(
                      "lbl_repeat".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 31.v,
                          width: 141.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 29.v,
                                  width: 141.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray60001,
                                    borderRadius: BorderRadius.circular(
                                      14.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 42.h),
                                  child: Text(
                                    "lbl_daily".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 29.v,
                          width: 140.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 29.v,
                                  width: 140.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray90002,
                                    borderRadius: BorderRadius.circular(
                                      14.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_weekly".tr,
                                  style: theme.textTheme.titleLarge,
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
                      left: 4.h,
                      top: 23.v,
                      right: 30.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 13.v),
                          child: Text(
                            "lbl_due_date".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgToday1,
                          height: 37.v,
                          width: 35.h,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.v),
                    child: SizedBox(
                      width: 161.h,
                      child: Divider(
                        color: appTheme.gray50,
                        indent: 4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 30.v,
                      right: 16.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_priority".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 26.v,
                          width: 94.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 21.v,
                                  width: 94.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray90001,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 39.h),
                                  child: Text(
                                    "lbl_1".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
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
                      left: 4.h,
                      top: 43.v,
                      right: 26.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl_remainder".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 21.v,
                          width: 53.h,
                          margin: EdgeInsets.only(top: 7.v),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVideocamera,
                                height: 21.v,
                                width: 53.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 19.v,
                                  width: 21.h,
                                  margin: EdgeInsets.only(left: 5.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray100,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: 15.v,
                          width: 13.h,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 44.v,
                    ),
                    child: Text(
                      "msg_notes_for_quotes".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  BlocSelector<PageSixBloc, PageSixState,
                      TextEditingController?>(
                    selector: (state) => state.edittextController,
                    builder: (context, edittextController) {
                      return CustomTextFormField(
                        controller: edittextController,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 8.v,
                          right: 19.h,
                        ),
                        textInputAction: TextInputAction.done,
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 23.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Text(
                            "lbl_type".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.v),
                          child: Text(
                            "lbl_drop_down".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 38.v,
                    ),
                    child: Text(
                      "lbl_duration".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 25.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_notification_tune".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        Text(
                          "lbl_none".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 47.v,
                    ),
                    child: Text(
                      "lbl_snoose".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 67.v,
                    text: "lbl_save".tr,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 78.v,
                      right: 30.h,
                    ),
                    buttonStyle: CustomButtonStyles.fillErrorContainer,
                    buttonTextStyle: CustomTextStyles.displaySmallRoboto39,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
