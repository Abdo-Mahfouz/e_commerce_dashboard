import 'package:flutter/material.dart';

import '../../features/dashboard/presentation/view/dash_board_home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardHomeView.routeName:
      return MaterialPageRoute(builder: (_) => const DashBoardHomeView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
