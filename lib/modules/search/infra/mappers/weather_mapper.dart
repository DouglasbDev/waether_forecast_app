import '../../domain/entities/forecast_entity.dart';
import '../../domain/entities/weather_entity.dart';

class WeatherMapper {
  static WeatherEntity fromMap(Map<String, dynamic> map) {
    return WeatherEntity(
      temperature: map['temperature'] as String,
      wind: map['wind'] as String,
      description: map['description'] as String,
      forecast: map['forecast'] as List<ForecastEntity>,
    );
  }

  static Map<String, dynamic> toMap(WeatherEntity weather) {
    return <String, dynamic>{
      'temperature': weather.temperature,
      'wind': weather.wind,
      'description': weather.description,
      'forecast': weather.forecast
    };
  }
}
