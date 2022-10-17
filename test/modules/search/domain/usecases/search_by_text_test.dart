import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waether_forecast_app/modules/search/domain/entities/weather_entity.dart';
import 'package:waether_forecast_app/modules/search/domain/errors/app_exception_interface.dart';
import 'package:waether_forecast_app/modules/search/domain/repositories/weather_forecast_repository_interface.dart';
import 'package:waether_forecast_app/modules/search/domain/usecases/search_by_text.dart';
import 'package:mockito/mockito.dart';

class WeatherForecastRepositoryMock extends Mock
    implements IWeatherForecastRepository {}

void main() {
  final repository = WeatherForecastRepositoryMock();
  final usecase = SearchByTextUseCase(repository);

  test('deve retornar umas lista de WeatherEntity ', () async {
    when(repository.search('Douglas'))
        .thenAnswer((_) async => Right(<WeatherEntity>[]));
    final result = await usecase('Douglas');

    expect(result, isA<List<WeatherEntity>>());
  });

  test('deve retornar um InvalidTextError caso o texto seja invalido  ',
      () async {
    var result = await usecase('null');

    expect(result.fold(id, id), isA<InvalidTextError>());

    result = await usecase("");

    expect(result.fold(id, id), isA<InvalidTextError>());
  });
}
