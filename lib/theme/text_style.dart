import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitest/theme/color_manager.dart';
import 'package:uitest/theme/fontweight_helper.dart';

class TextStyles {
  static TextStyle heading1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.secondaryDark,
  );

  static TextStyle f24tdark = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.titleColor,
  );

  static TextStyle font24boldprimary = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.primary,
  );

  static TextStyle Blue32fontWeight = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorManager.primary,
  );

  static TextStyle smallText = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.greycolor,
  );
  static TextStyle hinttextfield = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.textlightgrey,
  );

  static TextStyle font13darkluemiduim = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorManager.secondaryDark,
  );
  static TextStyle font13semiboldprimary = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorManager.primary,
  );
  static TextStyle font13darkmiduim = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorManager.secondaryDark,
  );
  static TextStyle font13darkbold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.secondaryDark);
}
