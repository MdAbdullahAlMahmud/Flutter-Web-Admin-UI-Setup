import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);

      case salePageDisplayName:
        return _customIcon(Icons.sell_outlined, itemName);

      case purchasePageDisplayName:
        return _customIcon(Icons.shopping_cart, itemName);

      case receiveAndRePageDisplayName:
        return _customIcon(Icons.account_tree_outlined, itemName);

      case expensePageDisplayName:
        return _customIcon(Icons.account_balance_wallet_outlined, itemName);

      case paymentsPageDisplayName:
        return _customIcon(Icons.credit_card, itemName);

      case clientsPageDisplayName:
        return _customIcon(Icons.account_tree_rounded, itemName);

      case supplierPageDisplayName:
        return _customIcon(Icons.account_tree_outlined, itemName);

      case driversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);

      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);

      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
