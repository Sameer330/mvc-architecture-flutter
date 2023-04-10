import 'package:flutter/material.dart';
import 'package:mvc_arch_flutter/helpers/local_navigator.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
