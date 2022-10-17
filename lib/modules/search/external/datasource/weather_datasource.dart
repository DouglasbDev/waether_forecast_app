import 'package:dio/dio.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import '../../infra/datasources/weather_datasource_interface.dart';

class WeatherDatasource extends IWeatherDatasource {
  final Dio _dio;

  WeatherDatasource(this._dio);
  @override
  Future<List<WeatherEntity>> getWeather(String cityName) async {
    try {
      var response =
          await _dio.get('https://goweather.herokuapp.com/weather/$cityName');
      print(response);
    } catch (e) {
      print(e);
    }
    return [];
  }
}
