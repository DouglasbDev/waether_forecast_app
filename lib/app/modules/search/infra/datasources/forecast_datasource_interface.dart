import 'package:waether_forecast_app/app/modules/search/domain/entities/forecast_entity.dart';

abstract class ForecastDatasource {
  Future<List<ForecastEntity>> getForecast(String searchForecast);
}
