import 'bloc/page_ten_bloc.dart';
import 'models/page_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:roshan_s_application2/widgets/custom_elevated_button.dart';

class PageTenScreen extends StatelessWidget {
  const PageTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageTenBloc>(
      create: (context) => PageTenBloc(PageTenState(
        pageTenModelObj: PageTenModel(),
      ))
        ..add(PageTenInitialEvent()),
      child: PageTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageTenBloc, PageTenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.black900,
            appBar: CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarImage1(
                imagePath: ImageConstant.imgArrowleft1,
                margin: EdgeInsets.fromLTRB(34.h, 9.v, 318.h, 9.v),
              ),
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 72.h,
                vertical: 15.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_ppt_preparation".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 61.v),
                  SizedBox(
                    height: 221.v,
                    width: 225.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 221.v,
                            width: 225.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray30044,
                              borderRadius: BorderRadius.circular(
                                112.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_25_00".tr,
                            style: CustomTextStyles.displaySmallRoboto35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 44.v,
                    width: 155.h,
                    text: "lbl_pause".tr,
                    margin: EdgeInsets.only(
                      left: 35.h,
                      top: 57.v,
                      bottom: 5.v,
                    ),
                    buttonStyle: CustomButtonStyles.fillTealTL22,
                    buttonTextStyle: theme.textTheme.headlineSmall!,
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
