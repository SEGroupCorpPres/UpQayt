import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationManager extends StatefulWidget {
  const NotificationManager({super.key});

  @override
  State<NotificationManager> createState() => _NotificationManagerState();
}

class _NotificationManagerState extends State<NotificationManager> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestPermission();
    getToken();
  }

  void requestPermission() async {
    FirebaseMessaging fcm = FirebaseMessaging.instance;
    NotificationSettings settings = await fcm.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User Granted Permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User Granted Permission');
    }
  }

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then(
      (token) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('phoneToken', token!);
        print( 'PhoneToken --> $token' );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
