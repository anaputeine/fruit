import 'package:dio/dio.dart';
import 'package:fruits/model/fruit_response.dart';

class FruitApiClient {
  final Dio _dio;

  FruitApiClient(this._dio);

  Future<List<FruitResponse>> getAllFruits() async {
    final response = await _dio.get('fruit/all');
    final json = response.data as List<dynamic>;
    final fruits = json.map((fruit) => FruitResponse.fromJson(fruit));
    return fruits.toList();
  }

}
