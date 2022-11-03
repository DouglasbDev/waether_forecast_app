import 'package:waether_forecast_app/app/modules/domain/errors/app_exception_interface.dart';

import '../../domain/entities/weather_entity.dart';

abstract class WeatherState {
  const WeatherState();
}

class WeatherInitialState extends WeatherState {
  WeatherInitialState();
}

class WeatherLoadingState extends WeatherState {}

class ErrorWeatherState extends WeatherState {
  final IAppException error;

  ErrorWeatherState(this.error);
}

class SuccessWeatherState extends WeatherState {
  final WeatherEntity weather;
  const SuccessWeatherState(this.weather);
}
