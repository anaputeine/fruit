import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fruit_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class FruitResponse extends Equatable {
  final String name;
  final String family;
  final String order;
  final String genus;
  final int id;
  final FruitNutritionsResponse nutritions;

  const FruitResponse({
    required this.name,
    required this.family,
    required this.order,
    required this.genus,
    required this.id,
    required this.nutritions,
  });

  factory FruitResponse.fromJson(Map<String, dynamic> json) =>
      _$FruitResponseFromJson(json);

  @override
  List<Object?> get props => [name, family, order, genus, id, nutritions];
}

@JsonSerializable(explicitToJson: true, createToJson: false)
class FruitNutritionsResponse extends Equatable {
  final int calories;
  final double fat;
  final double sugar;
  final double carbohydrates;
  final double protein;

  const FruitNutritionsResponse({
    required this.calories,
    required this.fat,
    required this.sugar,
    required this.carbohydrates,
    required this.protein,
  });

  factory FruitNutritionsResponse.fromJson(Map<String, dynamic> json) =>
      _$FruitNutritionsResponseFromJson(json);

  @override
  List<Object?> get props => [calories, fat, sugar, carbohydrates, protein];
}
