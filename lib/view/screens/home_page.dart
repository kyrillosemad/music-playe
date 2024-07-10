import 'package:flutter/material.dart';
import 'package:music_app/view/shared%20widgets/homepage_part1.dart';
import 'package:music_app/view/shared%20widgets/homepage_part2.dart';
import 'package:music_app/view/shared%20widgets/homepage_part3.dart';
import 'package:music_app/view/shared%20widgets/homepage_part4.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: 100.w,
          height: 100.h,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 76, 138),
            Color.fromARGB(255, 154, 146, 241)
          ])),
          padding: EdgeInsets.only(top: 10.sp),
          child: Column(
            children: [
              const PartOne(),
              SizedBox(
                height: 1.h,
              ),
              const PartTwo(),
              SizedBox(
                height: 5.h,
              ),
              const PartThree(),
              SizedBox(
                height: 2.h,
              ),
              const PartFour(),
            ],
          ),
        ),
      ),
    );
  }
}
