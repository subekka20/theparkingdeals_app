// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:theparkingdeals/modules/auth/signup/infra/datasources/signup_datasource.dart';
// import 'package:theparkingdeals/modules/auth/signup/infra/models/signup_model.dart';
// import 'package:theparkingdeals/routes/route.dart';


// class SignUpController extends GetxController {
//   final SignUpDataSource _signupDataSource;

//   SignUpController(this._signupDataSource);

//   final RxBool isLoading = false.obs;
//   final RxString errorMessage = ''.obs;

//   Future<void> registerUser({
//     required String email,
//     required String title,
//     required String firstName,
//     required String lastName,
//     required String password,
//     required String mobileNumber,
//   }) async {
//     try {
//       isLoading.value = true;
//       errorMessage.value = '';

//       final user = SignupModel(
//         email: email,
//         title: title,
//         firstName: firstName,
//         lastName: lastName,
//         password: password,
//         mobileNumber: mobileNumber,
//       );

//       final response = await _signupDataSource.registerUser(user);

//       // Handle successful registration
//       Get.offNamed(AppRoutes.getQuote);
      
//       if (kDebugMode) {
//         print('Registration successful: $response');
//       }
//     } catch (e) {
//       errorMessage.value = e.toString();
      
//       // Show error snackbar
//       Get.snackbar(
//         'Registration Error', 
//         errorMessage.value,
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }