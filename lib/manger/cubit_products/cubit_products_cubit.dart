
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/products_model.dart';

part 'cubit_products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  static ProductsCubit get(context) => BlocProvider.of(context);
  ProductsModel? productsModel;
  List<Products> products = [];
  final dio = Dio();

  Future<void> productsCubit() async {
    emit(ProductsStateLoading());
    try {
      final response = await dio.get('https://student.valuxapps.com/api/home',
          options: Options(headers: {
            "Authorization":
                'b676yF4HQTAGtP9bYNM2kjAw3VZ6vd63Ar7dr7jQvhISokVKIK5K3Emr4tiPctOBgBlZhV',
          }));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = response.data;
        productsModel = ProductsModel.fromJson(json['data']);
        products = productsModel?.products ?? [];

        emit(ProductsStateSucces());
      } else {
        emit(ProductsStateError(errorMsg: 'Error'));
      }
    } on DioError catch (e) {
      String errorMsg;
      if (e.type == DioExceptionType.cancel) {
        errorMsg = 'Request was cancelled';
        emit(ProductsStateError(errorMsg: errorMsg));
      } else if (e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        errorMsg = 'Connection timed out';
        emit(ProductsStateError(errorMsg: errorMsg));
      } else if (e.type == DioExceptionType.badResponse) {
        errorMsg = 'Invalid status code: ${e.error}';
        emit(ProductsStateError(errorMsg: errorMsg));
      } else {
        errorMsg = 'An unexpected error: ${e.error}';
        emit(ProductsStateError(errorMsg: errorMsg));
        print(errorMsg);
      }
    } catch (e) {
      emit(ProductsStateError(errorMsg: 'An unknown error: $e'));
      print(e);
    }
  }
}
