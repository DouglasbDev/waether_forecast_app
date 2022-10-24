import '../../domain/entities/forecast_entity.dart';

class ForecastMapper {
  static ForecastEntity fromMap(Map<String, dynamic> data) {
    return ForecastEntity(
      day: data['day'],
      temperature: data['temperature'],
      wind: data['wind'],
    );
  }
}
