import 'package:flutter/material.dart';
import 'package:music_app/data/playlists.dart';
import 'package:sizer/sizer.dart';

class PartFour extends StatelessWidget {
  const PartFour({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 27.h,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
          width: 100.w,
          height: 4.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "playlists",
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
          height: 20.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: playlists.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  width: 40.w,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 3, 36, 63),
                                Color.fromARGB(255, 6, 199, 189)
                              ])),
                          height: 14.h,
                          margin: EdgeInsets.all(10.sp),
                          child: Center(
                              child: Text(
                            "${playlists[index]['name']}",
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
