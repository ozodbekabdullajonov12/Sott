import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_view.dart';

class SottBottomNavigationBar extends StatelessWidget {
  const SottBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 114.h,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipPath(
            clipper: PentagonClipper(),
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(color: Color(0xFFFFCE48)),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/main.svg"),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/search.svg"),
            onPressed: () {},
          ),
          ClipPath(
            clipper: PentagonClipper(),
            child: Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(color: Color(0xFFFFCE48)),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/plus.svg"),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/discussion.svg"),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/profile.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
