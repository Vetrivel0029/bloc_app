import 'package:bloc_app/pages/welcome/bloc/welcome_bloc.dart';
import 'package:bloc_app/pages/welcome/bloc/welcome_events.dart';
import 'package:bloc_app/pages/welcome/bloc/welcome_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return BlocBuilder<WelcomeBloc, WelcomeState>(

      builder: (context, state){
        print("build1");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Bloc"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,
          ),
          body: Container(
            // height: 800,
            color: state.isClick ?Colors.white:Colors.deepOrangeAccent,
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
                  width: double.maxFinite,
                  height: 200.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image:
                      NetworkImage("https://i.pinimg.com/originals/e1/2a/8e/e12a8ea15dc3cf40777ea8d7b01142d2.jpg"))
                  ),
                ),
                SizedBox(height: 20.h,),
                Text("Counter: ${state.counter}",style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 20.sp),),
                SizedBox(height: 20.h,),
                Text("CounterClick: ${state.isClick}",style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 20.sp),),
                SizedBox(height: 20.h,),
                Switch(value: state.isClick, onChanged:(value) =>  context.read<WelcomeBloc>().add(SwitchCounter()),),
                SizedBox(height: 20.h,),
               Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FloatingActionButton(onPressed: (){
                      context.read<WelcomeBloc>().add(IncrementCounter());
                    },child: const Icon(Icons.add),),
                    const SizedBox(height: 10,),
                    FloatingActionButton(onPressed: ()=>
                        context.read<WelcomeBloc>().add(DecrementCounter()),child: const Icon(Icons.remove_outlined),),

                  ],
                ),
              ],
            ),
          ),

        );
    }

    );
  }
}
