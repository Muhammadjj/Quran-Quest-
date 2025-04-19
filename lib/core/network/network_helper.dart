// ignore_for_file: strict_raw_type, inference_failure_on_function_invocation

part of 'network.dart';

class NetworkHelper {
  //! Default constructor (requires base URL)
  NetworkHelper({required String baseUrl}) {
    _dio = _configureDio(baseUrl: baseUrl);
  }
  late final Dio _dio;

  //! Configuring Dio with dynamic baseUrl
  Dio _configureDio({required String baseUrl}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
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

  //! GET request
  Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.get(endPoint, queryParameters: params);
    return response;
  }

  //! POST request
  Future<Response> post({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? params,
  }) async {
    final response =
        await _dio.post(endPoint, data: data, queryParameters: params);
    return response;
  }
}











/// ! ya dono classes same working kr rahe ha but main changing of two classes 
/// ! (NetworkHelperWithoutBaseURL) as ma baseUrl fix ha means change nhi ho 
/// ! skta lkn jo opr wali class ha as ka (BaseUrl change kr skty ha )
 

// part of 'network.dart';

// class NetworkHelperWithoutBaseURL {
//   factory NetworkHelper() => instance;

//   NetworkHelper._() : _dio = _configureDio();

//   late final Dio _dio;

//   static final NetworkHelper instance = NetworkHelper._();

// //  ! Configuring Dio
//   static Dio _configureDio() {
//     final dio = Dio(
//       BaseOptions(
//         baseUrl: QURAN_HUB_BASEURL,
//         receiveDataWhenStatusError: true,
//         // connectTimeout: const Duration(seconds: 5),
//       ),
//     );

//     if (!kReleaseMode) {
//       dio.interceptors.add(
//         PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseHeader: true,
//         ),
//       );
//     }
//     return dio;
//   }

// // ! Using this method to make a (Get Request) to the server
//   Future<Response> get({
//     required String endPoint,
//     Map<String, dynamic>? params,
//   }) async {
//     final response = await _dio.get(endPoint, queryParameters: params);
//     return response;
//   }
// }
