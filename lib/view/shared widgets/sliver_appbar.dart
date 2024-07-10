import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SliverBar extends StatelessWidget {
  const SliverBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 36.h,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: EdgeInsets.only(top: 15.sp),
          alignment: Alignment.topCenter,
          width: 100.w,
          height: 35.5.h,
          decoration: BoxDecoration(
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage("assets/images/album1.png"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10.sp)),
          child: Container(
            padding: EdgeInsets.all(15.sp),
            width: 100.w,
            height: 10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.queue_music_rounded,
                  size: 40.sp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
