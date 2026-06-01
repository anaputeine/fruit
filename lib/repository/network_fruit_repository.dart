import 'package:fruits/model/fruit_response.dart';
import 'package:fruits/repository/fruit_repository.dart';

import '../api/fruit_api_client.dart';

class NetworkFruitRepository implements FruitRepository {
  final FruitApiClient _fruitApiClient;

  NetworkFruitRepository(this._fruitApiClient);

  @override
  Future<List<FruitResponse>> getFruits() async {
    final fruits = await _fruitApiClient.getAllFruits();
    return fruits;
  }
}
