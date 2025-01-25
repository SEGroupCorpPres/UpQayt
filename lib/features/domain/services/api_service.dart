import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upqayt/core/constants.dart';
import 'package:upqayt/features/data/remote/models/auth_model.dart';
import 'package:upqayt/features/data/remote/models/otp_verify_model.dart';
import 'package:upqayt/features/data/remote/models/refresh_token_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_LOGIN)
  Future<HttpResponse> registerDevice(@Body() AuthModel deviceRegistration);

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_VERIFY)
  Future<HttpResponse> verifyOtp(@Body() OtpVerificationModel otpVerification);

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_REFRESH)
  Future<HttpResponse> refreshToken(@Body() RefreshTokenModel refreshToken);
}
