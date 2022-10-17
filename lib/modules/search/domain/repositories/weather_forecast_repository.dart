import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/infra/mappers/weather_mapper.dart';
import '../entities/weather_entity.dart';
import '../errors/erros.dart';
import '../errors/i_app_exception.dart';

abstract class IWeatherRepository {
  Future<Either<IFailureWeatherForecast, List<WeatherEntity>>> getWeather(
      String cityName);
}
