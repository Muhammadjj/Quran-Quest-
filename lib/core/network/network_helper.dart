part of 'network.dart';

class NetworkHelper {
  factory NetworkHelper() => instance;

  NetworkHelper._() : _dio = _configureDio();

  late final Dio _dio;

  static final NetworkHelper instance = NetworkHelper._();

//  ! Configuring Dio
  static Dio _configureDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: QURAN_HUB_BASEURL,
        receiveDataWhenStatusError: true,
        // connectTimeout: const Duration(seconds: 5),
      ),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
    return dio;
  }

// ! Using this method to make a (Get Request) to the server
  Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.get(endPoint, queryParameters: params);
    return response;
  }
}
