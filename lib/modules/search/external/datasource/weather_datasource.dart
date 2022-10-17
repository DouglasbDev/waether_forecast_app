import 'package:dio/dio.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';

import '../../infra/datasources/i_weather_datasource.dart';
import '../../infra/mappers/weather_mapper.dart';

class WeatherDatasource extends IWeatherDatasource {
  final Dio _dio;

  WeatherDatasource(this._dio);
  @override
  Future<List<WeatherEntity>> getWeather(String cityName) async {
     try {
    var response = await _dio.get('https://goweather.herokuapp.com/weather/$cityName');
    print(response);
  } catch (e) {
    print(e);
  }
  return [];
  }
  
}
