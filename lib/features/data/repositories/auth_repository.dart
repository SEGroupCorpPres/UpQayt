// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class DioClient {
//   final Dio _dio = Dio();
//
//   DioClient() {
//     _dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         // Har bir so'rovga JWT tokenini qo'shish
//         final prefs = await SharedPreferences.getInstance();
//         final accessToken = prefs.getString('accessToken');
//         if (accessToken != null) {
//           options.headers['Authorization'] = 'Bearer $accessToken';
//         }
//         handler.next(options);
//       },
//       onError: (DioException error, handler) async {
//         // Tokenni yangilashni boshqarish
//         if (error.response?.statusCode == 401) {
//           final prefs = await SharedPreferences.getInstance();
//           final refreshToken = prefs.getString('refreshToken');
//           if (refreshToken != null) {
//             try {
//               final refreshResponse = await _dio.post(
//                 'https://your-api-url.com/refresh',
//                 data: {'refreshToken': refreshToken},
//               );
//
//               if (refreshResponse.statusCode == 200) {
//                 final newTokens = refreshResponse.data;
//                 // Yangi tokenlarni saqlash
//                 prefs.setString('accessToken', newTokens['accessToken']);
//                 prefs.setString('refreshToken', newTokens['refreshToken']);
//                 // Yangilangan token bilan so'rovni qayta yuborish
//                 final requestOptions = error.requestOptions;
//                 requestOptions.headers['Authorization'] = 'Bearer ${newTokens['accessToken']}';
//                 final newResponse = await _dio.request(
//                   requestOptions.path,
//                   options: Options(
//                     method: requestOptions.method,
//                     headers: requestOptions.headers,
//                   ),
//                   data: requestOptions.data,
//                   queryParameters: requestOptions.queryParameters,
//                 );
//                 return handler.resolve(newResponse);
//               } else {
//                 // Refresh token muvaffaqiyatsiz bo'lsa, exception
//                 throw RefreshTokenException('Failed to refresh token');
//               }
//             } catch (e) {
//               // Istisno yuz berganda exception
//               handler.reject(DioException(
//                 requestOptions: error.requestOptions,
//                 error: e.toString(),
//                 type: DioExceptionType.unknown,
//               ));
//             }
//           }
//         }
//         handler.next(error);
//       },
//     ));
//   }
//
//   Dio get dio => _dio;
// }