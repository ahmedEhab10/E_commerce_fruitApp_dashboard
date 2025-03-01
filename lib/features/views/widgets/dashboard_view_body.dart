import 'package:flutter/material.dart';
import 'package:real_e_comm_dashboard/core/widgets/custom_button.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              // Navigator.pushNamed(context, AddProductView.routeName);
            },
            text: 'Add Data',
          ),
          const SizedBox(height: 16),
          CustomButton(
            onPressed: () {
              // Navigator.pushNamed(context, OrdersView.routeName);
            },
            text: 'View Orders',
          ),
        ],
      ),
    );
  }
}
