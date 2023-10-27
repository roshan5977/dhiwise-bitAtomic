import 'bloc/page_three_bloc.dart';
import 'models/page_three_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/widgets/custom_elevated_button.dart';

class PageThreeScreen extends StatelessWidget {
  const PageThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PageThreeBloc>(
      create: (context) => PageThreeBloc(PageThreeState(
        pageThreeModelObj: PageThreeModel(),
      ))
        ..add(PageThreeInitialEvent()),
      child: PageThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PageThreeBloc, PageThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.black90002,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 361.h,
                    margin: EdgeInsets.only(
                      top: 41.v,
                      right: 6.h,
                    ),
                    child: Text(
                      "msg_choose_the_first".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 41.v),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 455.v,
                      width: 296.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 14.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 27.h,
                                vertical: 14.v,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup30,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "lbl_meditation".tr,
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                  ),
                                  SizedBox(height: 57.v),
                                  Text(
                                    "lbl_workout".tr,
                                    style: theme.textTheme.headlineMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.h,
                                      top: 58.v,
                                    ),
                                    child: Text(
                                      "lbl_reading_books".tr,
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                  ),
                                  SizedBox(height: 57.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "lbl_listen_to_tedx".tr,
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                  ),
                                  SizedBox(height: 57.v),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 88.v),
                              child: SizedBox(
                                width: 296.h,
                                child: Divider(
                                  color: appTheme.gray5002,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 76.v),
                              child: Text(
                                "msg_or_type_your_own".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 35.v,
                      right: 36.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          width: 111.h,
                          text: "lbl_skip".tr,
                        ),
                        CustomElevatedButton(
                          width: 114.h,
                          text: "lbl_next2".tr,
                          buttonStyle: CustomButtonStyles.fillCyan,
                          buttonTextStyle: theme.textTheme.headlineMedium!,
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
