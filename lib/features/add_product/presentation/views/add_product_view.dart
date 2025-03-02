import 'package:flutter/material.dart';
import 'package:real_e_comm_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';

import '../../../../core/widgets/build_app_bar.dart';
import 'widgets/add_product_view_body_bloc_builder.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Add Product'),
      body: const SafeArea(child: AddProductViewBody()),
    );
  }
}
