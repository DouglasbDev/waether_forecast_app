import 'forecast_entity.dart';

class WeatherEntity {
  final String temperature;
  final String wind;
  final String description;
  final List<ForecastEntity>? forecast;

  WeatherEntity(
      {required this.temperature,
      required this.wind,
      required this.description,
      required this.forecast});
}
