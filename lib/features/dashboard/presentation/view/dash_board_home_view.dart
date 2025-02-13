import 'package:flutter/material.dart';

import '../widgets/dash_board_home_body.dart';

class DashBoardHomeView extends StatelessWidget {
  const DashBoardHomeView({super.key});
  static const String routeName = 'dashBoardHomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashBoardHomeBody(),
    );
  }
}
