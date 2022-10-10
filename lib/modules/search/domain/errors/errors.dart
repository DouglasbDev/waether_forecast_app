abstract class FailureSearchWeatherForecast implements Exception {}

class InvalidTextError implements FailureSearchWeatherForecast {}

class DataSourceError implements FailureSearchWeatherForecast {}
