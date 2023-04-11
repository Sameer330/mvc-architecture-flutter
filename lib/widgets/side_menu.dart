import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_arch_flutter/constants/controllers.dart';
import 'package:mvc_arch_flutter/constants/style.dart';
import 'package:mvc_arch_flutter/helpers/responsiveness.dart';
import 'package:mvc_arch_flutter/routing/routes.dart';
import 'package:mvc_arch_flutter/widgets/custom_text.dart';
import 'package:mvc_arch_flutter/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "LOGO",
                    style: TextStyle(height: 1.5),
                  ),
                ),
                const Flexible(
                  child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  ),
                ),
                SizedBox(
                  width: width / 48,
                ),
              ],
            ),
          const SizedBox(
            height: 40,
          ),
          Divider(
            color: lightGrey.withOpacity(0.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        // TODO: go to authentication page
                      }
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                        // TODO: go to item name route
                      }

                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    },
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
