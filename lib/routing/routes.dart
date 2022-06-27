const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const driversPageDisplayName = "Drivers";
const driversPageRoute = "/drivers";

const clientsPageDisplayName = "Clients";
const clientsPageRoute = "/clients";

const salePageDisplayName = "Sale";
const salePageRoute = "/sale";

const purchasePageDisplayName = "Purchase";
const purchasePageRoute = "/purchase";

const receiveAndRePageDisplayName = "Receive And Return";
const receivePageRoute = "/receive_return";

const paymentsPageDisplayName = "Payments";
const paymentsPageRoute = "/payments";

const expensePageDisplayName = "Expense";
const expensePageRoute = "/expense";

const supplierPageDisplayName = "Supplier";
const supplierPageRoute = "/supplier";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(salePageDisplayName, salePageRoute),
  MenuItem(purchasePageDisplayName, purchasePageRoute),
  MenuItem(receiveAndRePageDisplayName, receivePageRoute),
  MenuItem(expensePageDisplayName, expensePageRoute),
  MenuItem(paymentsPageDisplayName, paymentsPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(supplierPageDisplayName, supplierPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
