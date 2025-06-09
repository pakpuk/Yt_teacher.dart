import 'package:flutter/material.dart';
import 'package:uitest/routing/routes.dart';
import 'package:uitest/view/Screens/home_page.dart';
import 'package:uitest/view/Screens/login_screen.dart';
import 'package:uitest/view/Screens/signup_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => loginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => loginScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Column(
                    children: [
                      Text("there is no route to lockin for ${settings.name}")
                    ],
                  ),
                ));
    }
  }
}
