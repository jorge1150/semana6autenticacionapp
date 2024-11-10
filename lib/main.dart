import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/authScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(MyApp());
  } catch (e) {
    print("Firebase falla al incializar: $e");
    runApp(
        MyApp()); // Inicia la app aunque Firebase falle, para manejar el error
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}
