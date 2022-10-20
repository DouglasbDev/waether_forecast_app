import 'package:dartz/dartz.dart';
import '../entities/weather_entity.dart';
import '../errors/i_app_exception.dart';

abstract class IWeatherRepository {
  Future<Either<IFailureWeatherForecast, List<WeatherEntity>>> getWeather(
      String cityName);
}
