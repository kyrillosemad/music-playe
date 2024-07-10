import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PartOne extends StatelessWidget {
  const PartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.list_sharp,
          size: 30.sp,
          color: Colors.white,
        ),
        Text(
          "Music Player",
          style: TextStyle(fontSize: 17.sp, color: Colors.white),
        ),
        Icon(
          Icons.search,
          size: 30.sp,
          color: Colors.white,
        )
      ],
    );
  }
}
