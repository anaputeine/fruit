import 'package:equatable/equatable.dart';

class Fruit extends Equatable {
  final String name;
  final String family;
  final String order;
  final String genus;
  final int id;

  const Fruit({
    required this.name,
    required this.family,
    required this.order,
    required this.genus,
    required this.id,
  });

  @override
  List<Object?> get props => [name, family, order, genus, id,];
}
