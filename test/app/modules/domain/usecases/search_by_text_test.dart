import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:waether_forecast_app/app/modules/domain/errors/erros.dart';
import 'package:waether_forecast_app/app/modules/domain/repositories/weather_forecast_repository_interface.dart';
import 'package:waether_forecast_app/app/modules/domain/usecases/search_by_text.dart';

class WeatherRepositoryMock extends Mock implements IWeatherRepository {}

void main() {
  final repository = WeatherRepositoryMock();
  final usecase = SearchByTextUseCase(repository);

  final weather = WeatherEntity(
    description: "Partly cloudy",
    temperature: "+29 °C",
    wind: "26 km/h",
    forecast: [],
  );
  

  test('deve retornar umas lista de WeatherEntity ', () async {
    when(() => repository.getWeather('Fortaleza'))
        .thenAnswer((_) async => Right(weather));
    final result = await usecase('Fortaleza');
    expect(result.fold(id, id), isA<WeatherEntity>());
  });

  test('deve retornar um InvalidTextError caso o texto seja invalido  ',
      () async {
    when(() => repository.getWeather('maceió'))
        .thenAnswer((_) async => Right(weather));

    final emptyString = await usecase("");
    final spaceString = await usecase(' ');

    expect(emptyString.fold(id, id), isA<InvalidTextError>());
    expect(spaceString.fold(id, id), isA<InvalidTextError>());
  });
}
