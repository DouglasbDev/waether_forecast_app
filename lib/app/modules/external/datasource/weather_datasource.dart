import 'package:dio/dio.dart';
import '../../../core/interfaces/i_http_client.dart';
import '../../domain/errors/erros.dart';
import '../../infra/datasources/weather_datasource_interface.dart';

class WeatherDatasource extends IWeatherDatasource {
  final IHttpClient _dio;

  WeatherDatasource(this._dio);
  @override
  Future<Map<String, dynamic>> getWeather(String cityName) async {
    try {
      final response =
          await _dio.get('https://goweather.herokuapp.com/weather/$cityName');

      final data = response;

      final dataIsNotFound = data.containsValue('NOT_FOUND');
      final dataIsEmpty = data.values.any((element) => element.isEmpty);

      if (dataIsNotFound || dataIsEmpty) {
        throw const WeatherNotFoundError(
          'Weather forecast not found for city.',
        );
      }

      return data;
    } on HttpClientError catch (e) {
      if (e.statusCode == 404) {
        throw const WeatherNotFoundError(
          'Weather forecast not found for city.',
        );
      }
      throw DataSourceError(e.message);
    }
    // try {
    //   final response =
    //       await _dio.get('https://goweather.herokuapp.com/weather/$cityName');

    //   final data = response;
    //   return data;
    // } on HttpClientError catch (e) {
    //   if (e.statusCode == 404) {}
    //   throw DataSourceError(e.message);
    // }
  }
}
