import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primaryContainer,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 41.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 14.v),
                    Container(
                        decoration: AppDecoration.outlinePrimary1,
                        child: Text("msg_habit_tracker".tr,
                            style: CustomTextStyles.titleLargeIrishGrover)),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgBitatomiclow,
                        height: 295.v,
                        width: 293.h),
                    Container(
                        width: 320.h,
                        margin: EdgeInsets.only(
                            left: 18.h, top: 101.v, right: 16.h),
                        child: Text("msg_create_good_habits".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.headlineSmallKameron)),
                    SizedBox(height: 90.v),
                    Divider(color: appTheme.red5001)
                  ]))));
    });
  }
}
