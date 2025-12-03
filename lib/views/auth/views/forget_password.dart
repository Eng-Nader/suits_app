import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_input.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                'Forgot Your Password?',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Enter your email or your phone number, we \nwill send you confirmation code',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(
                    0xffA1A8B0,
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              _Item(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item();

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool isEmailActive = false;
  bool isPhoneActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 56.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              isEmailActive = !isEmailActive;
              isPhoneActive = false;
              setState(() {});
            },
            child: AnimatedContainer(
              width: isEmailActive ? 151.w : 120.w,
              decoration: BoxDecoration(
                color: isEmailActive ? Color(0xffF9FAFB) : null,
                borderRadius: BorderRadius.circular(29.r),
              ),
              alignment: Alignment.center,
              duration: Duration(milliseconds: 350),
              child: Text(
                'email',
                style: TextStyle(
                  color: isEmailActive ? Color(0xffDD8560) : Color(0xffA1A8B0),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              isPhoneActive = !isPhoneActive;
              isEmailActive = false;
              setState(() {});
            },
            child: AnimatedContainer(
              width: isPhoneActive ? 151.w : 120.w,

              decoration: BoxDecoration(
                color: isPhoneActive ? Color(0xffF9FAFB) : null,
                borderRadius: BorderRadius.circular(29.r),
              ),
              alignment: Alignment.center,
              duration: Duration(milliseconds: 350),
              child: Text(
                'phone',
                style: TextStyle(
                  color: isPhoneActive ? Color(0xffDD8560) : Color(0xffA1A8B0),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
