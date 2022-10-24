import 'package:waether_forecast_app/app/modules/domain/errors/app_exception_interface.dart';
import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/app/modules/domain/repositories/weather_forecast_repository_interface.dart';
import 'package:waether_forecast_app/app/modules/infra/mappers/weather_mapper.dart';

import '../datasources/weather_datasource_interface.dart';

class WeatherForecastRepository implements IWeatherRepository {
  final IWeatherDatasource _datasource;

  const WeatherForecastRepository(this._datasource);

  @override
  Future<Either<IAppException, WeatherEntity>> getWeather(
      String cityName) async {
    try {
      final result = await _datasource.getWeather(cityName);
      return Right(WeatherMapper.fromMap(result));
    } on IAppException catch (e) {
      return Left(e);
    }
  }
}
