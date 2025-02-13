import 'package:flutter/material.dart';

import '../../features/add_product/presentaion/views/add_product_view.dart';
import '../../features/dashboard/presentation/views/dash_board_home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardHomeView.routeName:
      return MaterialPageRoute(builder: (_) => const DashBoardHomeView());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (_) => const AddProductView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
