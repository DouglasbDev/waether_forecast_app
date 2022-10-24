import '../../domain/entities/weather_entity.dart';
import 'forecast_mapper.dart';

class WeatherMapper {
  static WeatherEntity fromMap(Map<String, dynamic> map) {
    return WeatherEntity(
      temperature: map['temperature'],
      wind: map['wind'],
      description: map['description'],
      forecast: List<Map<String, dynamic>>.from(map['forecast'])
          .map(ForecastMapper.fromMap)
          .toList(),
    );
  }

  static Map<String, dynamic> toMap(WeatherEntity weather) {
    return {
      'temperature': weather.temperature,
      'wind': weather.wind,
      'description': weather.description,
      'forecast': weather.forecast
    };
  }
}
