import 'package:dartz/dartz.dart';
import 'package:real_e_comm_dashboard/core/errors/failures.dart';
import 'package:real_e_comm_dashboard/features/add_product/domain/entities/add_product_entitey.dart';

abstract class ProductsRepo {
  Future<Either<Failure, void>> addProduct(AddProductEntitey addProductEntitey);
}
