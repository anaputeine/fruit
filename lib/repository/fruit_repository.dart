import '../model/fruit.dart';

abstract class FruitRepository {
  Future<List<Fruit>> getFruits();
}
