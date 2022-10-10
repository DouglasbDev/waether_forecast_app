import 'dart:convert';

import '../../domain/entities/result_search_weather_forecast.dart';

class ResultSearchWeatherForecastModel extends ResultSearchWeatherForecast {
  final String img;
  final String title;

  ResultSearchWeatherForecastModel(this.img, this.title) : super('', '');

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'img': img});
    result.addAll({'title': title});

    return result;
  }

  factory ResultSearchWeatherForecastModel.fromMap(Map<String, dynamic> map) {
    return ResultSearchWeatherForecastModel(
      map['img'] ?? '',
      map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultSearchWeatherForecastModel.fromJson(String source) =>
      ResultSearchWeatherForecastModel.fromMap(json.decode(source));
}
