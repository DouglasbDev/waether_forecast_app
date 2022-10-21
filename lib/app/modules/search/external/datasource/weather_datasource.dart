import 'package:dio/dio.dart';
import '../../infra/datasources/weather_datasource_interface.dart';

class WeatherDatasource extends IWeatherDatasource {
  final Dio _dio;

  WeatherDatasource(this._dio);
  @override
  Future<Map<String, dynamic>> getWeather(String cityName) async {
    final response =
        await _dio.get('https://goweather.herokuapp.com/weather/$cityName');
    return response.data;
  }
}
