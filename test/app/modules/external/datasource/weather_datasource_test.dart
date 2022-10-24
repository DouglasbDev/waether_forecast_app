import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:waether_forecast_app/app/core/http_clients/dio_client.dart';
import 'package:waether_forecast_app/app/modules/external/datasource/weather_datasource.dart';

import '../../../core/data.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dio = DioMock();
  final client = DioHttpClient(dio);
  final datasource = WeatherDatasource(client);

  test('should return a WeatherModel', () async {
    when(dio.get('maceió')).thenAnswer(
      (_) async => GoWeatherResponse.successResponse,
    );

    final result = await datasource.getWeather('maceio');

    expect(result, isA<Map<String, dynamic>>());
  });
}
