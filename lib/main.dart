import 'package:flutter/material.dart';
import 'package:meet_app/screens/home_screen.dart';
import 'package:meet_app/screens/login_screen.dart';
import 'package:meet_app/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

var w;
var h;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await initializeService();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => const LoginScreenPage(),
        '/home': (context) => const HomeScreen(),
      },
      home: const LoginScreenPage(),
    );
  }
}
