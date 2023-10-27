import 'package:flutter/material.dart';
import 'package:roshan_s_application2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgToday1,
      activeIcon: ImageConstant.imgToday1,
      type: BottomBarEnum.Today1,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgR21,
      activeIcon: ImageConstant.imgR21,
      type: BottomBarEnum.R21,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAnalyticspngisolatedphotos,
      activeIcon: ImageConstant.imgAnalyticspngisolatedphotos,
      type: BottomBarEnum.Analyticspngisolatedphotos,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.v,
      margin: EdgeInsets.only(
        left: 49.h,
        right: 63.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(
          37.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: 48.v,
              width: 40.h,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].activeIcon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].activeIcon
                  : null,
              height: 37.v,
              width: 35.h,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Today1,
  R21,
  Analyticspngisolatedphotos,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
