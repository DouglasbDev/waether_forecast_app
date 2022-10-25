import 'dart:convert';

import 'package:dio/dio.dart';

class GoWeatherResponse {
  const GoWeatherResponse._();

  static const successMap = _successMap;
  static const notFoundMap = _notFoundMap;
  static const emptyMap = _emptyMap;

  static final successResponse = Response(
    requestOptions: RequestOptions(data: {}, path: ''),
    statusCode: 200,
    data: jsonDecode(successMap),
  );

  static final notFoundResponse = Response(
    requestOptions: RequestOptions(data: {}, path: ''),
    statusCode: 200,
    data: jsonDecode(notFoundMap),
  );

  static final emptyResponse = Response(
    requestOptions: RequestOptions(data: {}, path: ''),
    statusCode: 200,
    data: jsonDecode(emptyMap),
  );
}

const _successMap = '''
{
  "temperature":"+30 °C",
  "wind":"17 km/h",
  "description":"Partly cloudy",
  "forecast":[
    {
      "day":"1",
      "temperature":"+30 °C",
      "wind":"17 km/h"
    },
    {
      "day":"2",
      "temperature":"+30 °C",
      "wind":"19 km/h"
    },
    {
      "day":"3",
      "temperature":"+30 °C",
      "wind":"17 km/h"
    }
  ]
}
''';

const _notFoundMap = '''
{
  "message": "NOT_FOUND"
}
''';

const _emptyMap = '''
{
  "temperature":"",
  "wind":"",
  "description":"",
  "forecast": [
    {
      "day":"",
      "temperature":"",
      "wind":""
    },
    {
      "day":"",
      "temperature":"",
      "wind":""
    },
    {
      "day":"",
      "temperature":"",
      "wind":""
    }
  ]
}
''';
