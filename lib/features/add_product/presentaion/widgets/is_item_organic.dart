import 'package:flutter/material.dart';

import 'custom_checkbox.dart';

class IsItemOrganicWidget extends StatefulWidget {
  const IsItemOrganicWidget({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsItemOrganicWidget> createState() => _IsItemOrganicWidgetState();
}

class _IsItemOrganicWidgetState extends State<IsItemOrganicWidget> {
  bool isItemOrganic = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isItemOrganic = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isItemOrganic,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text('Organic Item'),
        ),
      ],
    );
  }
}
