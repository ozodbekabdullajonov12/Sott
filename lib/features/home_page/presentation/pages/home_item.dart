import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sott/data/models/estate_model.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.estate});

  final EstateModel estate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 5.h,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                estate.image,
                fit: BoxFit.cover,
                width: 169,
                height: 128,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                Text(
                  "${estate.price}",
                  style: TextStyle(
                    color: Color(0xFF1A1528),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  estate.currency,
                  style: TextStyle(
                    color: Color(0xFF1A1528),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    fontFamily: "Gilroy",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("${estate.category}●"),
                Text("${estate.numOfRooms}●"),
                Text("${estate.floor} of ${estate.totalFloors}●"),
                Text("${estate.area} m"),
              ],
            ),
            Row(
              children: [
                SvgPicture.network(estate.nearPlacesModel.image),
                Text(estate.nearPlacesModel.title),
                SizedBox(width: 35.w),
                Text("${estate.nearPlacesModel.distance}m"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
