import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upqayt/app/app.dart';
import 'package:upqayt/core/constants.dart';
import 'package:upqayt/features/domain/services/api_service.dart';
import 'package:upqayt/features/presentation/bloc/auth/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarBrightness: Brightness.dark,
  //     statusBarIconBrightness: Brightness.dark,
  //   ),
  // );
  const String baseUrl = Constants.BASE_URl;
  final Dio dio = Dio(
    BaseOptions(baseUrl: baseUrl),
  );
  final ApiService apiServices = ApiService(dio);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(apiServices),
        )
      ],
      child: App(),
    ),
  );
}
