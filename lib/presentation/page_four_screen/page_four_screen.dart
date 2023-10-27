import 'bloc/page_four_bloc.dart';
import 'models/page_four_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/core/utils/validation_functions.dart';
import 'package:roshan_s_application2/widgets/custom_elevated_button.dart';
import 'package:roshan_s_application2/widgets/custom_text_form_field.dart';

class PageFourScreen extends StatelessWidget {
  PageFourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PageFourBloc>(
      create: (context) => PageFourBloc(PageFourState(
        pageFourModelObj: PageFourModel(),
      ))
        ..add(PageFourInitialEvent()),
      child: PageFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 29.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 79.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 114.v,
                          bottom: 111.v,
                        ),
                        child: SizedBox(
                          width: 78.h,
                          child: Divider(
                            color: appTheme.red800,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBitatomiclow231x233,
                        height: 231.v,
                        width: 233.h,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(36.h, 14.v, 41.h, 5.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 28.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder35,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 254.h,
                          margin: EdgeInsets.only(
                            top: 39.v,
                            right: 3.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 48.h,
                            vertical: 7.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup3,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocSelector<PageFourBloc, PageFourState,
                                  TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomTextFormField(
                                    width: 64.h,
                                    controller: emailController,
                                    margin: EdgeInsets.only(
                                      left: 7.h,
                                      top: 4.v,
                                    ),
                                    hintText: "lbl_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 48.v),
                              BlocSelector<PageFourBloc, PageFourState,
                                  TextEditingController?>(
                                selector: (state) => state.passwordController,
                                builder: (context, passwordController) {
                                  return CustomTextFormField(
                                    width: 106.h,
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.v),
                        Text(
                          "msg_forgot_password".tr,
                          style: CustomTextStyles.bodyLargeGray60003,
                        ),
                        SizedBox(height: 4.v),
                        CustomElevatedButton(
                          height: 42.v,
                          width: 102.h,
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillCyanTL21,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeKameronWhiteA70001,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_signup".tr,
                          style: CustomTextStyles.titleLargeKameronCyan400,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_or_login_with".tr,
                          style: CustomTextStyles.bodyLargePrimary,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 14.v,
                            right: 11.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 27.h,
                            vertical: 5.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup4,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "msg_sign_in_with_facebook".tr,
                                  style: CustomTextStyles.bodyLargeGray90003,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 7.h,
                                  top: 33.v,
                                ),
                                child: Text(
                                  "msg_sign_in_with_google".tr,
                                  style: CustomTextStyles.bodyLargeGray10001,
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
      ),
    );
  }
}
