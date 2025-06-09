import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uitest/helpers/constaints.dart';
import 'package:uitest/view/widgets/button_widget.dart';
import 'package:uitest/view/widgets/tetfield_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isobscureText = true;
  bool _isConfirmPasswordHidden = true;

  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Constaints.singuptitle),
              SizedBox(
                height: 8.h,
              ),
              Text(Constaints.signupsubtitle),
              SizedBox(
                height: 30.h,
              ),
              Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Column(
                    children: [
                      TextFielWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          if (value.length < 3) {
                            return 'Username must be at least 3 characters long';
                          }
                          return null;
                        },
                        hintText: Constaints.userName,
                        controller: usernameController,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFielWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Invalid email address';
                          } else {
                            return null;
                          }
                        },
                        hintText: Constaints.email,
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFielWidget(
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (!RegExp(
                                  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{6,20}$')
                              .hasMatch(value)) {
                            return 'Password must contain at least one uppercase letter, one lowercase letter, and one number';
                          } else {
                            return null;
                          }
                        },
                        hintText: Constaints.password,
                        isobscureText: isobscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isobscureText = !isobscureText;
                            });
                          },
                          child: isobscureText
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFielWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != passwordController.text) {
                            return 'passwords do not  match';
                          }
                          return null;
                        },
                        hintText: Constaints.confirmpassword,
                        isobscureText: _isConfirmPasswordHidden,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isConfirmPasswordHidden =
                                  !_isConfirmPasswordHidden;
                            });
                          },
                          child: _isConfirmPasswordHidden
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                        controller: confirmPasswordController,
                      ),
                    ],
                  )),
              SizedBox(
                height: 40.h,
              ),
              ButtonWidget(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      final username = usernameController.text;
                      final email = emailController.text;
                      final password = passwordController.text;
                      context.push('/login');
                      print('Signup successful');
                    } else {
                      print('Signup failed');
                    }
                  },
                  title: Constaints.signup),
            ],
          ),
        ),
      )),
    );
  }
}
