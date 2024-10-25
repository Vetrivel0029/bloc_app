import 'package:bloc_app/Counter_bloc.dart';
import 'package:bloc_app/HomePage.dart';
import 'package:bloc_app/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
create: (context) => CounterBloc(),
     child:ScreenUtilInit(
       builder: (context, child) => MaterialApp(
         title: 'Flutter Demo',
         debugShowCheckedModeBanner: false,
         theme: ThemeData(

           colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
           useMaterial3: true,
         ),
         home: const Welcome(),
       ),
     ),
    );
  }
}


