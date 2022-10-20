import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';

abstract class IWeatherDatasource {
  Future<List<WeatherEntity>> getWeather(String cityName);
}
