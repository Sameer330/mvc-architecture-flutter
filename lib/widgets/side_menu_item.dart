import 'package:flutter/material.dart';
import 'package:mvc_arch_flutter/helpers/responsiveness.dart';
import 'package:mvc_arch_flutter/widgets/horizontal_menu_item.dart';
import 'package:mvc_arch_flutter/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
