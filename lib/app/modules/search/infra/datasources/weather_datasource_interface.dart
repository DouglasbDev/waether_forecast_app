import 'package:waether_forecast_app/app/modules/search/domain/entities/weather_entity.dart';

abstract class IWeatherDatasource {
  Future<Map<String, dynamic>> getWeather(String cityName);
}
