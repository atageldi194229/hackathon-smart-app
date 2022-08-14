import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

Future login() async {
  // try {
  UserCredential userCredential = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(
          email: "vepasvdepa@mail.ru", password: "SuperSecretPassword!");
  userCredential.user?.getIdToken().then((t) => print(t));
  print('authered');
  // } on FirebaseAuthException catch (e) {
  //   if (e.code == 'weak-password') {
  //     print('The password provided is too weak.');
  //   } else if (e.code == 'email-already-in-use') {
  //     print('The account already exists for that email.');
  //   }
  // } catch (e) {
  //   print(e);
  // }
}

Future<void> sendPushMessage(String str) async {
  //This is for send data message
  http.Response response = await http.post(
    Uri.parse('https://fcm.googleapis.com/fcm/send'),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAQYlwaEI:APA91bEmaa8kmM9i81_IxbwN6GaQSSJfiDNMjkWVuP-lfgM0kwa_IHuKTXc0yv74yubAudY3XGkAF1nzmU6FzLjFM7DjbXAa2Be5-kQoCp8SAQhM_MXcWQRMWAqxXZgOtFdXXOpR87Pv'
    },
    body: constructFCMPayload(),
  );
  print(response.statusCode);
  print('FCM request for device sent!');
  // } catch (e) {
  //   print(e);
  // }
}

String constructFCMPayload() {
  return jsonEncode({
    //shu yerde firebase store dal ahli userlaryn tokenlaryny alyp sholaryn ahlisine message ugratmaly ishleyar
    "registration_ids": [
      'e8ByS13DQWaWtp-wc3LN3K:APA91bFCyjMy_jJsGWC3toPhz5S7pfX6-qiZhR3n6qh8nLI9o98oe5-GcQmQpWD2ezFlOsNBYUOe7TQH7yuBMuVMQbv3mCKVvYvd379aYteJ7dTwcYFvVAR8OZjHxYqaZLRzrG2WdP00'
    ],
    "topic": "all",
    "data": {
      "count": "1",
    },
    "priority": "high",
    // "notification": {
    //   "title": "Hello FlutterFire!",
    //   "body": "This notification (2) was created via FCM!",
    //   // "to": "/topic/fcm_test"
    // },
  });
}
