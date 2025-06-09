import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitest/helpers/constaints.dart';
import 'package:uitest/theme/color_manager.dart';
import 'package:uitest/theme/text_style.dart';
import 'package:uitest/view/widgets/Alreadyhaveaccount_widget.dart';
import 'package:uitest/view/widgets/button_widget.dart';
import 'package:uitest/view/widgets/termsnadconditions_widget.dart';
import 'package:uitest/view/widgets/tetfield_widget.dart';

class loginScreen extends StatefulWidget {
  loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  Constaints.wlcmlogintxt,
                  style: TextStyles.font24boldprimary,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  Constaints.loginsubtitle,
                  style: TextStyles.smallText,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFielWidget(
                          hintText: Constaints.emailhint,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        TextFielWidget(
                          hintText: Constaints.passwordhint,
                          isobscureText: isobscureText,
                          suffixIcon: GestureDetector(
                            onTap: () => setState(() {
                              isobscureText = !isobscureText;
                            }),
                            child: Icon(
                              Icons.visibility_off,
                              color: ColorManager.greycolor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            Constaints.forgetpassword,
                            style: TextStyles.smallText.copyWith(
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ButtonWidget(
                          title: Constaints.login,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        TermsConditionsWidget(),
                        SizedBox(
                          height: 30,
                        ),
                        AlreadyHaveaccountWidget()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
