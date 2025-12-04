
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_image.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.r),
      backgroundColor: Colors.white,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF5F8FF),
          radius: 50,
          child: AppImage(
            image: 'check.svg',
          ),
        ),
        SizedBox(
          height: 26.h,
        ),
        Text(
          textAlign: TextAlign.center,
          'Success',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          textAlign: TextAlign.center,
          'Your account has been successfully\n registered',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xffA1A8B0),
          ),
        ),
        SizedBox(
          height: 21.h,
        ),
        Center(
          child: SizedBox(
            width: 200.w,
            child: AppButton(
              title: 'Sign In',
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
