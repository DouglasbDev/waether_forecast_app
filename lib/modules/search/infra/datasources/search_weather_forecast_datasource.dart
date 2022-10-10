import '../models/result_search_weather_forecast_model.dart';

abstract class SearchWeatherForecastDatasource {
  Future<List<ResultSearchWeatherForecastModel>> getSearch(String searchText);
}
