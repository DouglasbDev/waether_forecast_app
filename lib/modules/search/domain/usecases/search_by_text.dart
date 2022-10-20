import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/weather_forecast_repository_interface.dart';
import '../errors/erros.dart';
import '../errors/app_exception_interface.dart';

abstract class ISearchByText {
  Future<Either<IFailureWeatherForecast, List<WeatherEntity?>>> call(
      String cityName);
}

class SearchByTextUseCase implements ISearchByText {
  final IWeatherRepository _repository;

  SearchByTextUseCase(this._repository);
  @override
  Future<Either<IFailureWeatherForecast, List<WeatherEntity?>>> call(
      String cityName) async {
    if (cityName.trim().isEmpty) {
      return left(InvalidTextError('City name is empty.'));
    }
    final weather = await _repository.getWeather(cityName);
    return weather;
  }
}
