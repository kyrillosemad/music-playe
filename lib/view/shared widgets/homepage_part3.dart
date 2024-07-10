import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/data/albums.dart';
import 'package:music_app/view/screens/konsta.dart';
import 'package:sizer/sizer.dart';

class PartThree extends StatelessWidget {
  const PartThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 26.h,
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
          width: 100.w,
          height: 4.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Albums",
                style: TextStyle(fontSize: 20.sp, color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20.sp,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          width: 100.w,
          height: 22.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: albums.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  width: 40.w,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (index == 0) {
                            Get.to(const KONSTA());
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              image: DecorationImage(
                                  image:
                                      AssetImage("${albums[index]['image']}"),
                                  fit: BoxFit.fill)),
                          width: 40.w,
                          height: 14.h,
                          margin: EdgeInsets.all(10.sp),
                        ),
                      ),
                      Text(
                        "${albums[index]['name']}",
                        style: TextStyle(fontSize: 13.sp, color: Colors.white),
                      )
                    ],
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
