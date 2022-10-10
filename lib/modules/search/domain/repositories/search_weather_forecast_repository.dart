import 'package:dartz/dartz.dart';
import '../entities/result_search_weather_forecast.dart';
import '../errors/errors.dart';

abstract class ISearchWeatherForecastRepository {
  Future<
      Either<FailureSearchWeatherForecast,
          List<ResultSearchWeatherForecast>>> search(String searchText);
}
