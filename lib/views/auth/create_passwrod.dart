import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_input.dart';

class CreatePasswrodView extends StatelessWidget {
  const CreatePasswrodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Create New Password',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Create your new password to login',
                style: TextStyle(
                  color: Color(0xffA1A8B0),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AppInput(
                hintText: 'Enter Your Password',
                prefixIcon: 'password.png',
                isPadsswrod: true,
                bottomSpacing: 16.h,
              ),
              AppInput(
                hintText: 'Enter Your Password',
                prefixIcon: 'password.png',
                isPadsswrod: true,
                bottomSpacing: 16.h,
              ),
              AppButton(
                title: 'Create Password',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
