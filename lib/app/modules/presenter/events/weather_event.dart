import 'package:dartz/dartz.dart';

abstract class WeatherEvent {
  const WeatherEvent();
}

class LoadWeatherEvent extends WeatherEvent {}

class GetWeatherEvent extends WeatherEvent {
  final String value;
  const GetWeatherEvent(this.value);
}
