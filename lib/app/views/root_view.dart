import 'package:ezy_cv/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/root_controller.dart';

class RootView extends GetResponsiveView<RootController> {
  RootView({Key? key}) : super(key: key);

  @override
  Widget builder() {
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      // debugPrint("Current Route : ${current!.location}");
      // debugPrint("ROOT  ::  ${current.currentTreeBranch.length}");
      // debugPrint("ROOT  ::  ${current.currentTreeBranch}");
      bool init = true;
      if (current!.currentTreeBranch.length == 1 && init) {
        init = false;
        GetNavConfig config = GetNavConfig(
          currentTreeBranch: current.currentTreeBranch,
          location: Routes.HOME,
          state: current.state,
        );
        delegate.setInitialRoutePath(config);
      }
      return Scaffold(
        //appBar: AppBar(backgroundColor: Colors.amber),
        body: SafeArea(
          child: GetRouterOutlet(initialRoute: Routes.HOME),
        ),
      );
    });
  }
}
