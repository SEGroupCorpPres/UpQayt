import 'package:retrofit/retrofit.dart';
import 'package:test/test.dart';
import 'package:upqayt/features/domain/entities/auth_model.dart';
import 'package:upqayt/features/domain/entities/otp_verify_model.dart';
import 'package:upqayt/features/domain/entities/refresh_token_model.dart';
import 'package:upqayt/features/domain/services/api_service.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/address.dart';

void main() {
  // group('ApiRepository', () {
  //   test('registerDevice - Success', () async {
  //     // Create a mock ApiService or use a real implementation if available
  //     // For simplicity, let's assume we have a mock ApiService
  //
  //     // Create an instance of ApiRepository with the mock ApiService
  //     final apiRepository = MockApiService();
  //
  //     // Create a sample DeviceRegistration object
  //     final deviceRegistration = Auth(
  //       phoneNumber: "+998901231212",
  //       deviceName: "Samsung A22",
  //       deviceToken: "string",
  //     );
  //
  //     // Call the registerDevice method and await the result
  //      await apiRepository.registerDevice(deviceRegistration);
  //
  //
  //     // Expect the result to be successful (e.g., return null or true)
  //   });
  //
  //   test('verifyOtp - Success', () async {
  //     // Similar setup as above, create apiRepository, prepare input data, etc.
  //   });
  //
  //   test('refreshToken - Success', () async {
  //     // Similar setup as above, create apiRepository, prepare input data, etc.
  //   });
  // });
}
//
// // Mock ApiService class for testing purposes
// class MockApiService implements ApiService {
//   @override
//   Future<HttpResponse> registerDevice(Auth deviceRegistration) async {
//     // Mock implementation for registerDevice method
//     // For simplicity, let's assume it always returns null (success)
//     return;
//   }
//
//   @override
//   Future<void> refreshToken(RefreshToken refreshToken) {
//     // TODO: implement refreshToken
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<void> verifyOtp(OtpVerification otpVerification) {
//     // TODO: implement verifyOtp
//     throw UnimplementedError();
//   }
//
// // Implement other ApiService methods if needed for testing
// }
