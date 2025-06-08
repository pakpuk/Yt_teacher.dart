import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uitest/routing/routes.dart';
import 'package:uitest/theme/text_style.dart';

class AlreadyHaveaccountWidget extends StatelessWidget {
  const AlreadyHaveaccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font13darkmiduim,
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyles.font13semiboldprimary,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signupScreen);
              },
          ),
        ],
      ),
    );
  }
}
