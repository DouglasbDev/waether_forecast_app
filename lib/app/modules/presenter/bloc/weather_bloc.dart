import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_forecast_app/app/modules/presenter/events/weather_event.dart';

import '../../domain/usecases/search_by_text.dart';
import '../states/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final ISearchByTextUsecase usecase;
  WeatherBloc(this.usecase) : super(WeatherInitialState()) {
    on<GetWeatherEvent>(getWeather);
  }
  Future<void> getWeather(
    GetWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    final weather = await usecase(event.value);

    weather.fold(
      (error) => emit(ErrorWeatherState(error)),
      (weather) => emit(SuccessWeatherState(weather)),
    );
  }
}
