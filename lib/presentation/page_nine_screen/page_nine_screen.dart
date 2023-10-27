import 'bloc/page_nine_bloc.dart';
import 'models/page_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';

class PageNineScreen extends StatelessWidget {
  const PageNineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageNineBloc>(
      create: (context) => PageNineBloc(PageNineState(
        pageNineModelObj: PageNineModel(),
      ))
        ..add(PageNineInitialEvent()),
      child: PageNineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageNineBloc, PageNineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: Container(
                height: 38.adaptSize,
                width: 38.adaptSize,
                margin: EdgeInsets.fromLTRB(32.h, 9.v, 320.h, 9.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowleft1,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowleft1,
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 18.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 242.h,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      right: 58.h,
                    ),
                    child: Text(
                      "msg_roshan_lets_start".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 49.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30.h,
                          margin: EdgeInsets.only(bottom: 7.v),
                          child: Text(
                            "lbl_00_00_00_25".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 78.h,
                            top: 14.v,
                            bottom: 21.v,
                          ),
                          child: Text(
                            "lbl_ppt_preparation".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPink.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_00_25".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              SizedBox(height: 10.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_00_25".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 45.h,
                            top: 14.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "lbl_break".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Container(
                    height: 77.v,
                    width: 310.h,
                    decoration: BoxDecoration(
                      color: appTheme.green500,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Container(
                    height: 48.v,
                    width: 310.h,
                    decoration: BoxDecoration(
                      color: appTheme.pink800,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
