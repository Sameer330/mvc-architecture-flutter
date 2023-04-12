const String RootRoute = "/";

const String OverViewPageDisplayName = "Overview";
const String OverViewPageRoute = "/overview";

const String DriversPageDisplayName = "Drivers";
const String DriversPageRoute = "/drivers";

const String ClientsPageDisplayName = "Clients";
const String ClientsPageRoute = "/clients";

const String AuthenticationDisplayName = "Log Out";
const String AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationDisplayName, AuthenticationPageRoute),
];
