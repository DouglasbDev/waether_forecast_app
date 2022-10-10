import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/result_search_weather_forecast.dart';
import 'package:waether_forecast_app/modules/search/domain/errors/errors.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/search_weather_forecast_repository.dart';
import 'package:waether_forecast_app/modules/search/domain/usecases/search_by_text.dart';
import 'package:mockito/mockito.dart';

class SearchWeatherForecastRepositoryMock extends Mock
    implements ISearchWeatherForecastRepository {}

void main() {
  final repository = SearchWeatherForecastRepositoryMock();
  final usecase = SearchByText(repository);

  test('deve retornar umas lista de ResultSearchWeatherForecast ', () async {
    when(repository.search('douglas'))
        .thenAnswer((_) async => Right(<ResultSearchWeatherForecast>[]));
    final result = await usecase('Douglas');

    expect(result, isA<List<ResultSearchWeatherForecast>>());
  });

  test('deve retornar um InvalidTextError caso o texto seja invalido  ',
      () async {
    when(repository.search('douglas'))
        .thenAnswer((_) async => Right(<ResultSearchWeatherForecast>[]));
    var result = await usecase('null');

    expect(result.fold(id, id), isA<InvalidTextError>());

    result = await usecase("");

    expect(result.fold(id, id), isA<InvalidTextError>());
  });
}
