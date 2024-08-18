import 'package:dio/dio.dart';
import 'dio_client.dart';
import '../../core/api_config.dart';

class ApiService<T> {
  final DioClient _dioClient;

  ApiService(this._dioClient);

  Future<Map<String, dynamic>> get(
      {required String endPoint,
      Map<String, dynamic>? params,
      Map<String, dynamic>? headers}) async {
    var response = await _dioClient.dio.get('${ApiConfig.baseUrl}$endPoint',
        queryParameters: params, options: Options(headers: headers));
    return response.data;
  }

  Future<List<dynamic>> getList(
      {required String endPoint,
      Map<String, dynamic>? params,
      Map<String, dynamic>? headers}) async {
    var response = await _dioClient.dio.get('${ApiConfig.baseUrl}$endPoint',
        queryParameters: params, options: Options(headers: headers));
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    T? data,
    Map<String, dynamic>? queryParams,
  }) async {
    var response = await _dioClient.dio.post(
      "${ApiConfig.baseUrl}$endPoint",
      data: data,
      queryParameters: queryParams,
    );
    return response.data;
  }

  Future<Response> delete({required String endPoint}) async {
    var response = await _dioClient.dio.delete('${ApiConfig.baseUrl}$endPoint');
    return response;
  }

  Future<Map<String, dynamic>> put({required String endPoint, T? data}) async {
    var response = await _dioClient.dio.put(
      "${ApiConfig.baseUrl}$endPoint",
      data: data,
    );
    return response.data;
  }
}
