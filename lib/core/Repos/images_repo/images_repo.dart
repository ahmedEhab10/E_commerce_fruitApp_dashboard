import 'package:dartz/dartz.dart';
import 'package:real_e_comm_dashboard/core/errors/failures.dart';

abstract class ImagesRepo {
  Future<Either<Failure, String>> uploadImage();
}
