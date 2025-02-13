import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dash_board_home_view.dart';
import 'package:flutter/material.dart';

import 'core/helper_functions/on_generate_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashBoardHomeView.routeName,
    );
  }
}
