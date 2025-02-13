import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class DashBoardHomeBody extends StatelessWidget {
  const DashBoardHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomButton(text: 'Add Data', onPressed: () {}));
  }
}
