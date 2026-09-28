import 'package:dio/dio.dart';
import 'package:proyectoide/models/product_model.dart';

class ProductService {
  final Dio _dio = Dio();

  Future<List<ProductModel>> getProduct() async {
    final response = await _dio.get('https://fakestoreapi.com/products');
    if(response.statusCode != 200){
      return [];
    }

    final List<dynamic> data = response.data;

    return data.map((elemento)=> ProductModel.fromJson(elemento)).toList();
  }
}