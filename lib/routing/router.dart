import 'package:flutter/material.dart';
import 'package:mvc_arch_flutter/pages/authentication/authentication.dart';
import 'package:mvc_arch_flutter/pages/clients/clients.dart';
import 'package:mvc_arch_flutter/pages/drivers/drivers.dart';
import 'package:mvc_arch_flutter/pages/overview/overview.dart';
import 'package:mvc_arch_flutter/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
