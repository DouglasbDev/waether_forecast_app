import 'app_exception_interface.dart';

class WeatherFailure extends IFailureWeatherForecast {
  WeatherFailure(super.message, [super.stackTrace]);
}

class InvalidTextError extends WeatherFailure {
  InvalidTextError(super.message, [super.stackTrace]);
}

class DataSourceError extends WeatherFailure {
  DataSourceError(super.message, [super.stackTrace]);
}