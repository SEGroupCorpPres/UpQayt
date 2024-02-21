import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upqayt/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(App());
}
