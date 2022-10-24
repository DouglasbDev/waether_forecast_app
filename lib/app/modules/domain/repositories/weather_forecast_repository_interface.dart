import 'package:dartz/dartz.dart';
import '../entities/weather_entity.dart';
import '../errors/app_exception_interface.dart';

abstract class IWeatherRepository {
  Future<Either<IAppException, WeatherEntity>> getWeather(
      String cityName);
}
