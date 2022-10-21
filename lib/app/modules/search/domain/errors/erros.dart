import 'app_exception_interface.dart';

class WeatherFailure extends IAppException {
  WeatherFailure(super.message, [super.stackTrace]);
}

class InvalidTextError extends WeatherFailure {
  InvalidTextError(super.message, [super.stackTrace]);
}

class DataSourceError extends WeatherFailure {
  DataSourceError(super.message, [super.stackTrace]);
}


class HttpClientError extends WeatherFailure {
  final int? statusCode;
   HttpClientError(
    String message, {
    this.statusCode,
    StackTrace? stackTrace,
  }) : super(message, stackTrace);
}