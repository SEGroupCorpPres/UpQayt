import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upqayt/app/app.dart';
import 'package:upqayt/core/constants.dart';
import 'package:upqayt/core/observer/bloc_observer.dart';
import 'package:upqayt/features/domain/services/api_service.dart';
import 'package:upqayt/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:upqayt/firebase_options.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMessaging.instance.getInitialMessage();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarBrightness: Brightness.dark,
  //     statusBarIconBrightness: Brightness.dark,
  //   ),
  // );
  const String baseUrl = Constants.BASE_URl;
  final Dio dio = Dio(
    BaseOptions(baseUrl: baseUrl, contentType: 'application/json'),
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
