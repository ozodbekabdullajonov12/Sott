import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_view.dart';

class SottAppBar extends StatelessWidget {
  const SottAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: Checkbox.width),
          child: IconButton(
            icon: SvgPicture.asset("assets/notifications.svg"),
            onPressed: () {},
          ),
        ),
      ],
      title: Row(
        children: [
          ClipPath(
            clipper: PentagonClipper(),
            child: Container(
              width: 36.w,
              height: 36.h,
              decoration: BoxDecoration(color: Color(0xff1A1528)),
              child: Center(child: SvgPicture.asset("assets/S.svg")),
            ),
          ),
          Text(
            "SOTT",
            style: TextStyle(
              color: Color(0xFF1A1528),
              fontWeight: FontWeight.w900,
              fontSize: 24,
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
      floating: true,
      snap: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset("assets/appbar_fon.png", fit: BoxFit.cover),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCE48),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset("assets/key.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Text(
                    "Buy",
                    style: TextStyle(
                      color: Color(0xFF1A1528),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCE48),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset("assets/sale.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Text(
                    "Sale",
                    style: TextStyle(
                      color: Color(0xFF1A1528),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCE48),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset("assets/arenda.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Text(
                    "Sent out",
                    style: TextStyle(
                      color: Color(0xFF1A1528),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCE48),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset("assets/building.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Text(
                    "Pass",
                    style: TextStyle(
                      color: Color(0xFF1A1528),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
