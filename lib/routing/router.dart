import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/pages/payment/payment.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());

    case salePageRoute:
      return _getPageRoute(PaymentPage());

    case purchasePageRoute:
      return _getPageRoute(PaymentPage());

    case receivePageRoute:
      return _getPageRoute(PaymentPage());

    case expensePageRoute:
      return _getPageRoute(PaymentPage());

    case paymentsPageRoute:
      return _getPageRoute(PaymentPage());

    case clientsPageRoute:
      return _getPageRoute(PaymentPage());

    case supplierPageRoute:
      return _getPageRoute(PaymentPage());

    case driversPageRoute:
      return _getPageRoute(DriversPage());

    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
