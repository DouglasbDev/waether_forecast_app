import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:waether_forecast_app/app/core/interfaces/i_http_client.dart';
import 'package:waether_forecast_app/app/modules/external/datasource/weather_datasource.dart';

class DioMock extends Mock implements IHttpClient {}

void main() {
  final dio = DioMock();
  final datasource = WeatherDatasource(dio);
  test('should return a WeatherModel', () async {
    when(() => dio.get(any())).thenAnswer(
      (_) async => <String, dynamic>{},
    );

    final result = await datasource.getWeather('Fortaleza');

    expect(result, isA<Map<String, dynamic>>());
  });
}
