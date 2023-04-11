import 'package:flutter/material.dart';
import 'package:mvc_arch_flutter/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled deliveries",
            value: "3",
            isActive: true,
            onTap: () {},
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "7",
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
        ],
      ),
    );
  }
}
