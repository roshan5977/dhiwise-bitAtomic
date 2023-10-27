import 'bloc/page_seven_bloc.dart';
import 'models/page_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_five_page/page_five_page.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:roshan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:roshan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:roshan_s_application2/widgets/custom_bottom_bar.dart';

class PageSevenScreen extends StatelessWidget {
  PageSevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PageSevenBloc>(
      create: (context) => PageSevenBloc(PageSevenState(
        pageSevenModelObj: PageSevenModel(),
      ))
        ..add(PageSevenInitialEvent()),
      child: PageSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageSevenBloc, PageSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              title: AppbarTitle(
                text: "lbl_hey_roshan".tr,
                margin: EdgeInsets.only(left: 37.h),
              ),
              actions: [
                AppbarImage(
                  imagePath: ImageConstant.imgOpenwavinghandemojisvg,
                  margin: EdgeInsets.fromLTRB(13.h, 17.v, 8.h, 8.v),
                ),
                AppbarImage(
                  imagePath: ImageConstant.imgCircleprofilepng,
                  margin: EdgeInsets.only(
                    left: 77.h,
                    top: 8.v,
                    right: 51.h,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
                vertical: 26.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_today_s_habits".tr,
                    style: CustomTextStyles.headlineSmallIrishGrover,
                  ),
                  SizedBox(height: 20.v),
                  SizedBox(
                    width: 116.h,
                    child: Divider(
                      color: appTheme.gray500,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "msg_0_of_4_completed".tr,
                    style: CustomTextStyles.bodyMedium15,
                  ),
                  Container(
                    width: 294.h,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      top: 46.v,
                      right: 8.h,
                    ),
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.fillGray50002.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Container(
                      height: 18.v,
                      width: 19.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray90004,
                        borderRadius: BorderRadius.circular(
                          9.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 294.h,
                    margin: EdgeInsets.only(
                      top: 33.v,
                      right: 9.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.fillGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 12.v),
                        Container(
                          height: 18.v,
                          width: 19.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray90004,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 294.h,
                    margin: EdgeInsets.only(
                      top: 33.v,
                      right: 10.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.fillGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Container(
                      height: 18.v,
                      width: 19.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray90004,
                        borderRadius: BorderRadius.circular(
                          9.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 294.h,
                    margin: EdgeInsets.only(
                      top: 37.v,
                      right: 10.h,
                      bottom: 5.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.v),
                        Container(
                          height: 18.v,
                          width: 19.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray90004,
                            borderRadius: BorderRadius.circular(
                              9.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottomBar(
              onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              },
            ),
          ),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Today1:
        return AppRoutes.pageFivePage;
      case BottomBarEnum.R21:
        return "/";
      case BottomBarEnum.Analyticspngisolatedphotos:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.pageFivePage:
        return PageFivePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
