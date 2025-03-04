import 'package:dartz/dartz.dart';
import 'package:real_e_comm_dashboard/core/Repos/products_repo/products_repo.dart';
import 'package:real_e_comm_dashboard/core/Services/DataBase_Service.dart';
import 'package:real_e_comm_dashboard/core/errors/failures.dart';
import 'package:real_e_comm_dashboard/core/utils/backend_endpoint.dart';
import 'package:real_e_comm_dashboard/features/add_product/data/models/add_product_model.dart';
import 'package:real_e_comm_dashboard/features/add_product/domain/entities/add_product_entitey.dart';

class ProductsRepoImp extends ProductsRepo {
  DatabaseService databaseService;
  ProductsRepoImp({required this.databaseService});
  @override
  Future<Either<Failure, void>> addProduct(
    AddProductEntitey addProductEntitey,
  ) async {
    try {
      await databaseService.addData(
        path: BackendEndpoint.AddProduct,
        data: AddProductModel.fromaddProductEntity(addProductEntitey).tomap(),
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
