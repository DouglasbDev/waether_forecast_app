import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:waether_forecast_app/app/modules/domain/errors/erros.dart';
import 'package:waether_forecast_app/app/modules/infra/datasources/weather_datasource_interface.dart';
import 'package:waether_forecast_app/app/modules/infra/repositories/weather_forecast_repository_implements.dart';

import '../../../core/data.dart';

class WeatherDataSourceMock extends Mock implements IWeatherDatasource {}

void main() {
  final datasource = WeatherDataSourceMock();
  final jsonResponse = jsonDecode(GoWeatherResponse.successJson);
  test('should return a Weather', () async {
    when(() => datasource.getWeather(any()))
        .thenAnswer((i) async => jsonResponse);

    final repository = WeatherForecastRepository(datasource);

    final weather = await repository.getWeather('Fortaleza');
    expect(weather.fold(id, id), isA<WeatherEntity>());
  });
  test('should return a DatasourceError if datasource fail', () async {
    when(() => datasource.getWeather(any()))
        .thenThrow(const DataSourceError(''));

    final repository = WeatherForecastRepository(datasource);
    final result = await repository.getWeather('Fortaleza');

    expect(
      result.fold(id, id),
      isA<DataSourceError>(),
    );
  });
}
