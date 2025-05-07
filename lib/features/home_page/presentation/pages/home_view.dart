import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sott/features/home_page/presentation/manager/home_bloc.dart';
import 'package:sott/features/home_page/presentation/manager/home_state.dart';
import 'package:sott/features/home_page/presentation/pages/home_item.dart';
import 'package:sott/features/home_page/presentation/pages/sott_app_bar.dart';
import 'package:sott/features/home_page/presentation/pages/sott_bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final estate = state.realEstates!;
            if (state.status == HomeStatus.loading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state.status == HomeStatus.error) {
              return Center(child: Text("Xatolik"));
            }
            return CustomScrollView(
              slivers: [
                SottAppBar(),
                SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Recommended",
                          style: TextStyle(
                            color: Color(0xFF1A1528),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "See all",
                          style: TextStyle(
                            color: Color(0xFFFF8811),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 170 / 190,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final estate = state.realEstates![index];
                    return HomeItem(estate: estate);
                  }, childCount: state.realEstates!.length),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: SottBottomNavigationBar(),
    );
  }
}

class PentagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double w = size.width;
    final double h = size.height;
    final double centerX = w / 2;
    final double centerY = h / 2;
    final double radius = min(w, h) / 2;

    for (int i = 0; i < 5; i++) {
      double angle = (pi / 2) + (2 * pi * i / 5);
      double x = centerX + radius * cos(angle);
      double y = centerY - radius * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
