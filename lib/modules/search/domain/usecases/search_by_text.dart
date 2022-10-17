import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/weather_forecast_repository.dart';
import '../errors/erros.dart';
import '../errors/i_app_exception.dart';

abstract class ISearchByText {
  Future<Either<IFailureWeatherForecast, List<WeatherEntity?>>> call(
      String cityName);
}

class SearchByTextUseCase implements ISearchByText {
  final IWeatherRepository repository;

  SearchByTextUseCase(this.repository);
  @override
  Future<Either<IFailureWeatherForecast, List<WeatherEntity?>>> call(
      String cityName) async {
    if (cityName.isEmpty) {
      return left(InvalidTextError());
    }
    return repository.getWeather(cityName);
  }
}
