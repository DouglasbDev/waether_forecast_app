import 'package:waether_forecast_app/app/modules/search/domain/errors/app_exception_interface.dart';
import 'package:waether_forecast_app/app/modules/search/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/app/modules/search/domain/repositories/weather_forecast_repository_interface.dart';
import 'package:waether_forecast_app/app/modules/search/infra/mappers/weather_mapper.dart';
import '../../domain/errors/erros.dart';
import '../datasources/weather_datasource_interface.dart';

class WeatherForecastRepository implements IWeatherRepository {
  final IWeatherDatasource _datasource;

  WeatherForecastRepository(this._datasource);

  @override
  Future<Either<IFailureWeatherForecast, WeatherEntity>> getWeather(
      String cityName) async {
    try {
      final result = await _datasource.getWeather(cityName);
      final weather = WeatherMapper.fromMap(result);
      return Right(weather);
    } on IFailureWeatherForecast catch (e) {
      return Left(e);
    }
  }
}
