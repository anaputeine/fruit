import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits/my_app.dart';
import 'package:fruits/repository/fruit_repository.dart';
import 'package:fruits/repository/network_fruit_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'api/fruit_api_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio(BaseOptions(baseUrl: 'https://www.fruityvice.com/api/'));
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      request: true,
    ),
  );
  final fruitApiClient = FruitApiClient(dio);
  final networkFruitRepository = NetworkFruitRepository(fruitApiClient);
  final fruitRepositoryProvider = RepositoryProvider<FruitRepository>(
    create: (context) => networkFruitRepository,
  );

  runApp(
    MultiRepositoryProvider(
      providers: [fruitRepositoryProvider],
      child: const MyApp(),
    ),
  );
}
