import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;

//token juan: dLRH9LWPTa-9z1C0T4-3aN:APA91bGyKHHksNzGp64djxB67173KkLaXOT0DpuewTEFzGOKo6O7kFRhRfg4KY3Rm59d4mMAuImEcNo-GibTJG_aSBhg0JAdet9PScc4-6PKxPofA-585sOq2VZ9Hh__TZjtU9EGyAP

  final permission = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print(permission.authorizationStatus);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// print('User granted permission: ${settings.authorizationStatus}');

  @override
  Widget build(BuildContext context) {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print('Token: $value');
    // });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Servicios de Google'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
