import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uitest/helpers/constaints.dart';
import 'package:uitest/routing/routes.dart';
import 'package:uitest/theme/text_style.dart';
import 'package:uitest/view/Screens/signup_screen.dart';
import 'package:uitest/view/widgets/appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PersonalAppBar(
        title: Constaints.homepagetitle,
        onProfileTap: () {
          context.push(Routes.profileScreen);
        },
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
