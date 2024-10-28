import 'package:bloc_app/Counter_bloc.dart';
import 'package:bloc_app/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  final String? title;
  const Homepage({super.key,required this.title});


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final countEvent  = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(widget.title!),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           BlocBuilder<CounterBloc,int>(

             builder: (context, state) {
               return Text('Count $state');
             },
           ),

          Center(child: ElevatedButton(onPressed: (){
            countEvent.add(IncrementCounter());
          }, child: const Text("Increment"))),
          Center(child: ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    BlocProvider.value(
                  value: countEvent,
                  child: const Secondscreen(),
                ),
              ),
            );

          }, child: const Text("SecondScreen"))),
        ],
      ),
    );
  }
}
