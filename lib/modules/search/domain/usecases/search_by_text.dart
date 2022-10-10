import 'package:waether_forecast_app/modules/search/domain/entities/result_search_weather_forecast.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/search_weather_forecast_repository.dart';
import '../errors/errors.dart';

abstract class ISearchByText {
  Future<
      Either<FailureSearchWeatherForecast,
          List<ResultSearchWeatherForecast>>> call(String searchText);
}

class SearchByText implements ISearchByText {
  final ISearchWeatherForecastRepository repository;

  SearchByText(this.repository);
  @override
  Future<
      Either<FailureSearchWeatherForecast,
          List<ResultSearchWeatherForecast>>> call(String searchText) async {
    if (searchText == null || searchText.isEmpty) {
      return left(InvalidTextError());
    }
    return repository.search(searchText);
  }
}
