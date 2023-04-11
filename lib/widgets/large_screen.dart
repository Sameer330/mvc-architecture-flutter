import 'package:flutter/material.dart';
import 'package:mvc_arch_flutter/helpers/local_navigator.dart';
import 'package:mvc_arch_flutter/widgets/side_menu.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}
