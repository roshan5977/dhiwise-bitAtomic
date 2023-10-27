import 'bloc/page_five_container_bloc.dart';
import 'models/page_five_container_model.dart';
import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_five_page/page_five_page.dart';
import 'package:roshan_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class PageFiveContainerScreen extends StatelessWidget {
  PageFiveContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PageFiveContainerBloc>(
        create: (context) => PageFiveContainerBloc(PageFiveContainerState(
            pageFiveContainerModelObj: PageFiveContainerModel()))
          ..add(PageFiveContainerInitialEvent()),
        child: PageFiveContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PageFiveContainerBloc, PageFiveContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.black90002,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.pageFivePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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
