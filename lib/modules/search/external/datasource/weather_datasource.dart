import 'package:dio/dio.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';

import '../../infra/datasources/i_weather_datasource.dart';

class WeatherDatasource extends IWeatherDatasource {
  final Dio dio;

  WeatherDatasource(this.dio);
  @override
  Future<List<WeatherEntity>> getWeather(String cityName) async {
    final response =
        await dio.get('https://goweather.herokuapp.com/weather/$cityName');
  }
}
