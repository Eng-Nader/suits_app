import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_image.dart';

class OnBoradingView extends StatefulWidget {
  const OnBoradingView({super.key});

  @override
  State<OnBoradingView> createState() => _OnBoradingViewState();
}

class _OnBoradingViewState extends State<OnBoradingView> {
  final _list = [
    _Model(
      image: 'on_borading_1.jpg',
      subTitle:
          'Discover the latest trends and exclusive styles from our top designers',
      title: 'Welcome To Fashion',
    ),
    _Model(
      image: 'on_borading_2.jpg',
      subTitle:
          'Discover a wide range of fashion categories, browse new arrivals and shop your favourites',
      title: 'Explore & Shop',
    ),
    _Model(image: 'on_borading_3.jpg', title: 'Hi,Shop Now', subTitle: ''),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: _list.length,
        itemBuilder: (context, index) => _Item(
          currentIndex: currentIndex,
          model: _list[index],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.model, required this.currentIndex});
  final _Model model;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppImage(
            image: model.image,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        side: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onPressed: () {},

                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  model.subTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  children: [
                    Spacer(),
                    ...List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.only(right: 6.r),
                        height: 15.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          color: Color(0xffDD8560),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Color(0xffDD8560),
                      child: AppImage(
                        image: 'arrow.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Model {
  final String image, title, subTitle;

  _Model({
    required this.image,
    required this.title,
    this.subTitle = '',
  });
}
