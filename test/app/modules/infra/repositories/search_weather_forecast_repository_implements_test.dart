import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:waether_forecast_app/app/modules/infra/datasources/weather_datasource_interface.dart';
import 'package:waether_forecast_app/app/modules/infra/repositories/weather_forecast_repository_implements.dart';

import '../../../core/data.dart';

// class WeatherDataSourceMock extends Mock implements IWeatherDatasource {}

// void main() {
//   final dioMock = WeatherDataSourceMock();
//   final repository = WeatherForecastRepository(dioMock);
 
//   test('get_weather', () async {
//     when(dioMock.getWeather('maceió')).thenAnswer(
//       (_) async => GoWeatherResponse.successResponse,
//     );
//     when(() => dioMock.getWeather('')).thenAnswer((realInvocation)  => Response(data: weather,requestOptions: RequestOptions(path: '')));
//     var response = await repository.getWeather('teste');

    
//   });
// }
 