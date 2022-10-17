import 'package:waether_forecast_app/modules/search/domain/errors/app_exception_interface.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/weather_forecast_repository_interface.dart';
import '../../domain/errors/erros.dart';
import '../datasources/weather_datasource_interface.dart';
import '../mappers/weather_mapper.dart';

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
