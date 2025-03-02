import 'package:flutter/material.dart';
import 'package:real_e_comm_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:real_e_comm_dashboard/features/dashboard/views/dashboard_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());
    //  case OrdersView.routeName:
    //       return MaterialPageRoute(builder: (context) => const OrdersView());

    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
