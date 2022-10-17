import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';

import '../mappers/weather_mapper.dart';

abstract class IWeatherDatasource {
  Future<List<WeatherEntity>> getWeather(String cityName);
}
