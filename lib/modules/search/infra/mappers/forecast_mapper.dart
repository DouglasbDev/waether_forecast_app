import '../../domain/entities/forecast_entity.dart';

class ForecastMapper {
  static ForecastEntity fromMap(Map<String, dynamic> data) {
    return ForecastEntity(
      day: data['day'] as String,
      temperature: data['temperature'] as String,
      wind: data['wind'] as String,
    );
  }
}
