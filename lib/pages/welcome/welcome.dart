import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Bloc"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   width: 375.w,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(image:
              //     NetworkImage("https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?cs=srgb&dl=pexels-chanwalrus-958545.jpg&fm=jpg"))
              //   ),
              // ),
              Container(
                width: 375.w,
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage("https://i.pinimg.com/originals/e1/2a/8e/e12a8ea15dc3cf40777ea8d7b01142d2.jpg"))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
