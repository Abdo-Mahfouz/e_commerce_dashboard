import 'package:flutter/material.dart';

import 'custom_checkbox.dart';

class IsItemFeaturedWidget extends StatefulWidget {
  const IsItemFeaturedWidget({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsItemFeaturedWidget> createState() => _IsItemFeaturedWidgetState();
}

class _IsItemFeaturedWidgetState extends State<IsItemFeaturedWidget> {
  bool isItemFeatured = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isItemFeatured = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isItemFeatured,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text('Featured Item'),
        ),
      ],
    );
  }
}
