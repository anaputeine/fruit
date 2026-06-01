// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FruitResponse _$FruitResponseFromJson(Map<String, dynamic> json) =>
    FruitResponse(
      name: json['name'] as String,
      family: json['family'] as String,
      order: json['order'] as String,
      genus: json['genus'] as String,
      id: (json['id'] as num).toInt(),
      nutritions: FruitNutritionsResponse.fromJson(
        json['nutritions'] as Map<String, dynamic>,
      ),
    );

FruitNutritionsResponse _$FruitNutritionsResponseFromJson(
  Map<String, dynamic> json,
) => FruitNutritionsResponse(
  calories: (json['calories'] as num).toInt(),
  fat: (json['fat'] as num).toDouble(),
  sugar: (json['sugar'] as num).toDouble(),
  carbohydrates: (json['carbohydrates'] as num).toDouble(),
  protein: (json['protein'] as num).toDouble(),
);
