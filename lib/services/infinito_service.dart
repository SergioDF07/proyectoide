import 'package:dio/dio.dart';
import 'package:proyectoide/models/infinito_model.dart';

class InfinitoService {
  final Dio _dio = Dio();

  Future<List<InfinitoModel>> getInfinito(int page, {int limit = 0}) async {
    final response = await _dio.get('https://dragonball-api.com/api/characters?page=$page&limit=$limit');
    if(response.statusCode != 200){
      return [];
    }

    final List<dynamic> data = response.data['items'];

    return data.map((elemento)=> InfinitoModel.fromJson(elemento)).toList();
  }
}