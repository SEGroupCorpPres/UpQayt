import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:upqayt/features/domain/services/api_service.dart';
import 'package:upqayt/features/presentation/bloc/auth/auth_bloc.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    final dio = Dio();

    // Создание экземпляра ApiService
    final apiService = ApiService(dio);

    // Регистрация зависимостей
    Get.put<AuthBloc>(AuthBloc(apiService));
  }
}
