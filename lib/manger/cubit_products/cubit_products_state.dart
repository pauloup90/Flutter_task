part of 'cubit_products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsStateInitial extends ProductsState {}
class ProductsStateSucces extends ProductsState {
}
class ProductsStateError extends ProductsState {
  final String errorMsg;

  ProductsStateError({required this.errorMsg});
}
class ProductsStateLoading extends ProductsState {}

