import 'package:bloc_app/Counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final countBloc  = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           BlocBuilder<CounterBloc,int>(
             builder: (context,state) {
               return Text('Count $state');
             }
           ),
          Center(child: ElevatedButton(onPressed: (){
            countBloc.add(DecrementCounter());
          }, child: const Text("Decrement"))),
        ],
      ),
    );
  }
}
