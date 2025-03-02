import 'package:flutter/material.dart';
import 'package:real_e_comm_dashboard/core/helper_function/on_generate_routes.dart';
import 'package:real_e_comm_dashboard/features/dashboard/views/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
