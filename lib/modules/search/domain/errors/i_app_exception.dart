abstract class IFailureWeatherForecast implements Exception {
  final String message;
  final StackTrace? stackTrace;
  const IFailureWeatherForecast(this.message, [this.stackTrace]);
}
