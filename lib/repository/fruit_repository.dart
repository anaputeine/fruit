import 'package:fruits/model/fruit_response.dart';

abstract class FruitRepository {
  Future<List<FruitResponse>> getFruits();
}
