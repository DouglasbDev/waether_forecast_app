import 'app_exception_interface.dart';

class WeatherFailure extends IAppException {
  const WeatherFailure(super.message, [super.stackTrace]);
}

class InvalidTextError extends WeatherFailure {
  const InvalidTextError(super.message, [super.stackTrace]);
}

class DataSourceError extends WeatherFailure {
  const DataSourceError(super.message, [super.stackTrace]);
}

class WeatherNotFoundError extends WeatherFailure {
  const WeatherNotFoundError(super.message, [super.stackTrace]);
}

class HttpClientError extends WeatherFailure {
  final int? statusCode;
  HttpClientError(
    String message, {
    this.statusCode,
    StackTrace? stackTrace,
  }) : super(message, stackTrace);
}
