import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/app/modules/domain/repositories/weather_forecast_repository_interface.dart';
import '../errors/erros.dart';
import '../errors/app_exception_interface.dart';

abstract class ISearchByTextUsecase {
  Future<Either<IAppException, WeatherEntity>> call(String cityName);
}

class SearchByTextUseCase implements ISearchByTextUsecase {
  final IWeatherRepository _repository;

  const SearchByTextUseCase(this._repository);
  @override
  Future<Either<IAppException, WeatherEntity>> call(String cityName) async {
    if (cityName.trim().isEmpty) {
      return left(InvalidTextError('City name is empty.'));
    }
    final weather = await _repository.getWeather(cityName);
    return weather;
  }
}
