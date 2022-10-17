abstract class IFailureWeatherForecast implements Exception {
  const IFailureWeatherForecast(
      {required this.message, required this.stackTrace});
  final String message;
  final StackTrace? stackTrace;
}
