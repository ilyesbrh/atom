import 'dart:async';
import 'dart:developer';
import 'package:atom/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  // String? token = await FirebaseMessaging.instance.getToken();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp()
        .then((v) => print(v.toString()))
        .catchError((e) => log(e));

    // listenToMessagesAndRefrechNotification(context);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(body: Login()),
    );
  }

  void listenToMessagesAndRefrechNotification(context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      const snackBar = SnackBar(
        content: Text('New notification arrived'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      const snackBar = SnackBar(
        content: Text('New notification arrived'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }
}
