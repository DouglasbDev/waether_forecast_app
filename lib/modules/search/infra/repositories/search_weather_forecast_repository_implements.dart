import 'package:waether_forecast_app/modules/search/domain/errors/errors.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/result_search_weather_forecast.dart';
import 'package:dartz/dartz.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/search_weather_forecast_repository.dart';
import '../datasources/search_weather_forecast_datasource.dart';

class SearchWeatherForecastRepository
    implements ISearchWeatherForecastRepository {
  final SearchWeatherForecastDatasource datasource;

  SearchWeatherForecastRepository(this.datasource);

  @override
  Future<
      Either<FailureSearchWeatherForecast,
          List<ResultSearchWeatherForecast>>> search(String searchText) async {
    try {
      final result = await datasource.getSearch(searchText);
      return Right(result);
    } catch (e) {
      return left(DataSourceError());
    }
  }
}
