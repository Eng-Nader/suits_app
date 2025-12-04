
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppPinFild extends StatelessWidget {
  const AppPinFild({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      animationDuration: Duration(seconds: 1),
      animationType: AnimationType.scale,
      autoFocus: true,
      textStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24.sp,
      ),
      appContext: context,
      length: 4,
      pinTheme: PinTheme(
        fieldHeight: 64.h,
        fieldWidth: 64.w,
        borderRadius: BorderRadius.circular(16.r),
        shape: PinCodeFieldShape.box,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
        activeColor: Color(0xffDD8560),
        selectedColor: Color(0xffDD8560),
        inactiveColor: Colors.white,
      ),
    );
  }
}
