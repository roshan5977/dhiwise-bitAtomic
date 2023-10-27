import 'bloc/page_one_bloc.dart';
import 'models/page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/custom_outlined_button.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageOneBloc>(
      create: (context) => PageOneBloc(PageOneState(
        pageOneModelObj: PageOneModel(),
      ))
        ..add(PageOneInitialEvent()),
      child: PageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageOneBloc, PageOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90002,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 22.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 286.h,
                      margin: EdgeInsets.only(
                        left: 50.h,
                        top: 80.v,
                        right: 53.h,
                      ),
                      child: Text(
                        "msg_what_time_do_you".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 298.h,
                      margin: EdgeInsets.only(
                        left: 43.h,
                        top: 8.v,
                        right: 48.h,
                      ),
                      child: Text(
                        "msg_choose_the_time".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeKameron,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 85.h,
                      top: 91.v,
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
                        indent: 70.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 81.h,
                      child: Divider(),
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
                          child: Divider(),
                        ),
                        SizedBox(
                          width: 125.h,
                          child: Divider(
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
                          imagePath: ImageConstant.imgLabelcontainer,
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
