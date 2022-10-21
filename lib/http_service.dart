import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;
  final baseUrl = "https://reqres.in/";
  HttpService() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    initializerInterceptors();
  }

  initializerInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper());
  }
}
