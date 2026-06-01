import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/model/fruit.dart';
import '../repository/fruit_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FruitRepository _fruitRepository;
  late final Future<List<Fruit>>? _fruitFuture;

  @override
  void initState() {
    super.initState();
    _fruitRepository = context.read();
    _fruitFuture = _fruitRepository.getFruits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fruits')),
      body: FutureBuilder<List<Fruit>>(
        future: _fruitFuture,
        builder: (context, snapshot) {
          final connectionState = snapshot.connectionState;
          if (connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final fruits = snapshot.data ?? [];
          return ListView.builder(
            itemBuilder: (context, index) {
              final fruit = fruits[index];
              return Text('Fruit ${fruit.name}');
            },
            itemCount: fruits.length,
          );
        },
      ),
    );
  }
}
