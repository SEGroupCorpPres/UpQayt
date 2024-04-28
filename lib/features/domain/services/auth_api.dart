import 'package:http/http.dart' as http;
import 'package:upqayt/features/domain/entities/auth_model.dart';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  // Telefon raqamini yuborish orqali foydalanuvchini autentifikatsiya qilish
  Future<void> sendVerificationCode(String phoneNumber, String deviceName, String deviceToken) async {
    final response = await http.post(
      Uri.parse('$baseUrl/send-verification-code'),
      body: {
        'phone_number': phoneNumber,
        'device_name': deviceName,
        'device_token': deviceToken
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send verification code');
    }
  }

  // Telefon raqamini tasdiqlash
  Future<AuthModel> verifyPhoneNumber(String phoneNumber, String verificationCode) async {
    final response = await http.post(
      Uri.parse('$baseUrl/verify-phone-number'),
      body: {
        'phoneNumber': phoneNumber,
        'verificationCode': verificationCode,
      },
    );

    if (response.statusCode == 200) {
      final data = response.body; // JSON ma'lumotlarini qayta ishlang
      final authModel = AuthModel.fromJson(response.headers);
      return authModel;
    } else {
      throw Exception('Failed to verify phone number');
    }
  }
}
