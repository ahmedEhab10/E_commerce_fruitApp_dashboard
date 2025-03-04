part of 'add_product_cubit.dart';

@immutable
sealed class AddProductState {}

final class AddProductInitial extends AddProductState {}

final class AddProductInLoading extends AddProductState {}

final class AddProductInFailure extends AddProductState {
  String errMessage;

  AddProductInFailure(this.errMessage);
}

final class AddProductSucceess extends AddProductState {}
