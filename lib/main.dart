// import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'SMarT lady/homePage.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// import 'messaging_service.dart';

// MessagingService _msgService = MessagingService();
String? token;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // await _msgService.init();
  FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
    print(message?.notification?.body);
  });
  await FirebaseMessaging.instance.subscribeToTopic('all');
  FirebaseMessaging.instance.getToken().then((r) {
    print(r);
    token = r;
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMArT Lady',
      theme: ThemeData(primaryColor: Colors.blue.shade900),
      home: Home(),
    );
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage? message) async {
  print(message?.notification?.body);
}
