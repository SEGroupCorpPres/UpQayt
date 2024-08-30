import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upqayt/core/constants.dart';
import 'package:upqayt/features/domain/entities/auth_model.dart';
import 'package:upqayt/features/domain/entities/otp_verify_model.dart';
import 'package:upqayt/features/domain/entities/refresh_token_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_LOGIN)
  Future<HttpResponse> registerDevice(@Body() Auth deviceRegistration);

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_VERIFY)
  Future<HttpResponse> verifyOtp(@Body() OtpVerification otpVerification);

  @POST(Constants.CLIENT_API + Constants.POST_CLIENT_AUTH_REFRESH)
  Future<HttpResponse> refreshToken(@Body() RefreshToken refreshToken);
}
