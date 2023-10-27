import 'bloc/page_two_bloc.dart';
import 'models/page_two_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/custom_outlined_button.dart';

class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageTwoBloc>(
      create: (context) => PageTwoBloc(PageTwoState(
        pageTwoModelObj: PageTwoModel(),
      ))
        ..add(PageTwoInitialEvent()),
      child: PageTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageTwoBloc, PageTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray900,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 22.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 350.h,
                      margin: EdgeInsets.only(
                        left: 22.h,
                        top: 80.v,
                        right: 18.h,
                      ),
                      child: Text(
                        "msg_what_time_do_you2".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                  Container(
                    width: 296.h,
                    margin: EdgeInsets.only(
                      left: 38.h,
                      top: 8.v,
                      right: 54.h,
                    ),
                    child: Text(
                      "msg_we_will_remind_you".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeKameron,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 85.h,
                      top: 95.v,
                    ),
                    child: Text(
                      "lbl_09_20".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 85.h,
                      top: 13.v,
                    ),
                    child: Text(
                      "lbl_09_20".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: SizedBox(
                      width: 151.h,
                      child: Divider(
                        color: theme.colorScheme.onError,
                        indent: 70.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 81.h,
                      child: Divider(
                        color: appTheme.red50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 85.h,
                      top: 6.v,
                    ),
                    child: Text(
                      "lbl_09_20".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70.h,
                      top: 1.v,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 81.h,
                          child: Divider(
                            color: appTheme.blueGray10001,
                          ),
                        ),
                        SizedBox(
                          width: 125.h,
                          child: Divider(
                            color: appTheme.gray200,
                            indent: 44.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 85.h,
                      top: 7.v,
                    ),
                    child: Text(
                      "lbl_09_20".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  Container(
                    height: 137.v,
                    width: 375.h,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 49.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLabelcontainer106x375,
                          height: 106.v,
                          width: 375.h,
                          alignment: Alignment.topCenter,
                        ),
                        CustomOutlinedButton(
                          width: 213.h,
                          text: "lbl_next".tr,
                          margin: EdgeInsets.only(left: 70.h),
                          alignment: Alignment.bottomLeft,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 63.h,
                        top: 52.v,
                        right: 22.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "msg_already_have_account".tr,
                              style: CustomTextStyles.titleLargeKameron,
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 86.h,
                            margin: EdgeInsets.only(
                              left: 25.h,
                              bottom: 6.v,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 18.v,
                                    width: 86.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray100,
                                      borderRadius: BorderRadius.circular(
                                        9.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 6.h),
                                    child: Text(
                                      "lbl_login_now".tr,
                                      style: CustomTextStyles
                                          .bodyMediumKameronPrimary,
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
          ),
        );
      },
    );
  }
}
