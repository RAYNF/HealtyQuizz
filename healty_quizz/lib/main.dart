import 'package:flutter/material.dart';
import 'package:healty_quizz/presentation/pages/home_page.dart';
import 'package:healty_quizz/presentation/pages/login_page.dart';
import 'package:healty_quizz/presentation/pages/profile_page.dart';
import 'package:healty_quizz/presentation/pages/register_page.dart';
import 'package:healty_quizz/presentation/pages/splashscreen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        RegisterPage.routeName: (context) => RegisterPage(),
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        ProfilePage.routeName :(context) => ProfilePage()
        
      },
    );
  }
}
