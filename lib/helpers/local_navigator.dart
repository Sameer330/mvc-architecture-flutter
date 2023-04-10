import 'package:flutter/widgets.dart';
import 'package:mvc_arch_flutter/constants/controllers.dart';
import 'package:mvc_arch_flutter/routing/router.dart';
import 'package:mvc_arch_flutter/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
