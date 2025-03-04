import 'package:get_it/get_it.dart';
import 'package:real_e_comm_dashboard/core/Repos/products_repo/Products_Repo_imp.dart';
import 'package:real_e_comm_dashboard/core/Repos/products_repo/products_repo.dart';
import 'package:real_e_comm_dashboard/core/Services/DataBase_Service.dart';
import 'package:real_e_comm_dashboard/core/Services/Fire_Base_store_Service.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<DatabaseService>(FireBaseStoreService());

  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImp(databaseService: getIt.get<DatabaseService>()),
  );
}
