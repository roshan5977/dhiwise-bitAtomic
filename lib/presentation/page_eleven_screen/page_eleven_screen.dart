import 'bloc/page_eleven_bloc.dart';
import 'models/page_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';

class PageElevenScreen extends StatelessWidget {
  const PageElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageElevenBloc>(
      create: (context) => PageElevenBloc(PageElevenState(
        pageElevenModelObj: PageElevenModel(),
      ))
        ..add(PageElevenInitialEvent()),
      child: PageElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageElevenBloc, PageElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarImage1(
                imagePath: ImageConstant.imgArrowleft1,
                margin: EdgeInsets.fromLTRB(29.h, 9.v, 323.h, 9.v),
              ),
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 15.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_analytics".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  Container(
                    width: 332.h,
                    margin: EdgeInsets.only(
                      top: 26.v,
                      right: 10.h,
                      bottom: 5.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillGray80001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 7.v,
                            ),
                            child: Text(
                              "lbl_awake".tr,
                              style: CustomTextStyles.bodyLargeRoboto,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 4.v,
                            right: 4.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "lbl_wed".tr,
                                style: CustomTextStyles.bodyMedium13,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_thu".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl_fri".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "lbl_sat".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                  "lbl_sun".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                  "lbl_mon".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_tue".tr,
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgRectangle59,
                          height: 26.v,
                          width: 273.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgAnalyticspngisolatedphotos,
                          height: 22.v,
                          width: 28.h,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            right: 12.h,
                          ),
                        ),
                      ],
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
