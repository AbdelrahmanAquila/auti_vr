import 'package:auti_vr/firebase_options.dart';
import 'package:auti_vr/modules/panorama.dart';
// import 'package:auti_vr/modules/lessons_screen.dart';
// import 'package:auti_vr/modules/testScreen.dart';
import 'package:auti_vr/modules/vr2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PanoramaScreen());
  }
}
