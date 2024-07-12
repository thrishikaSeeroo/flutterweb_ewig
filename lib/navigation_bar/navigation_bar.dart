import 'package:east_and_west/widgets/desktop_view.dart';
import 'package:east_and_west/widgets/mobile_view.dart';
import 'package:east_and_west/widgets/tablet_view.dart';
import 'package:east_and_west/widgets/top_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ScreenTypeLayout(
        mobile: MobileHomePageView(),
        tablet: TabletHomePageView(),
        desktop: DesktopMobileView(),
      );

  }
}




