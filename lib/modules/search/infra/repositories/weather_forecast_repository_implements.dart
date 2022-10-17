import 'package:waether_forecast_app/modules/search/domain/errors/i_app_exception.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/weather_forecast_repository.dart';
import '../../domain/errors/erros.dart';
import '../datasources/i_weather_datasource.dart';

class WeatherForecastRepository implements IWeatherRepository {
  final IWeatherDatasource datasource;

  WeatherForecastRepository(this.datasource);

  @override
  Future<Either<IFailureWeatherForecast, List<WeatherEntity>>> getWeather(
      String cityName) async {
    try {
      final result = await datasource.getWeather(cityName);
      return Right(result);
    } catch (e) {
      return left(DataSourceError());
    }
  }
}
