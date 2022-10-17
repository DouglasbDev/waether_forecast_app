import 'app_exception_interface.dart';

class AppException extends IFailureWeatherForecast {
  const AppException({
    required String message,
    required StackTrace? stackTrace,
  }) : super(message: message, stackTrace: stackTrace);
}

class InvalidTextError implements IFailureWeatherForecast {
  @override
  // TODO: implement message
  String get message => throw UnimplementedError();

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();
}

class DataSourceError implements IFailureWeatherForecast {
  @override
  // TODO: implement message
  String get message => throw UnimplementedError();

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();
}
