
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:theparkingdeals/core/configs/api_config.dart';
// import 'package:theparkingdeals/core/configs/env_config.dart';
// import 'package:theparkingdeals/modules/auth/signup/infra/models/signup_model.dart';

// class SignUpDataSource {
//   final Dio _dio;

//   SignUpDataSource(this._dio);

//   Future<dynamic> registerUser(SignupModel user) async {
//     try {
//       final response = await _dio.post(
//         '${EnvConfig.baseUrl}${ApiConfig.register}',
//         data: user.toJson(),
//       );

//       return response.data;
//     } on DioException catch (e) {
//       if (kDebugMode) {
//         print('Registration Error: ${e.response?.data}');
//       }
//       throw Exception(e.response?.data['message'] ?? 'Registration failed');
//     }
//   }
// }