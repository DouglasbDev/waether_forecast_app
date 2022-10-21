import 'package:dio/dio.dart';
import 'package:waether_forecast_app/app/core/interfaces/i_http_client.dart';
import '../../modules/search/domain/errors/erros.dart';

class DioHttpClient implements IHttpClient {
  final Dio dio;

  DioHttpClient(this.dio);
  @override
  Future<Map<String, dynamic>> get(String url) async {
    try {
      final response = await dio.get(url);
      final data = response.data;
      return data;
    } on DioError catch (e) {
      throw HttpClientError(e.message, statusCode: e.response?.statusCode);
    }
  }
}
