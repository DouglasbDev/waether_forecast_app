import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/weather_entity.dart';

class WeatherMapper {
  static WeatherEntity fromMap(Map<String, dynamic> data) {
    return WeatherEntity(
      temperature: data['temperature'] as String,
      wind: data['wind'] as String,
      description: data['description'] as String,
      forecast: data['forecast'] as List<ForecastEntity>,
    );
  }
}
