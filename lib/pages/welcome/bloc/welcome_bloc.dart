import 'package:bloc_app/pages/welcome/bloc/welcome_events.dart';
import 'package:bloc_app/pages/welcome/bloc/welcome_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvents, WelcomeState>{
  WelcomeBloc():super( WelcomeState()){
    on<IncrementCounter>(onIncrement);
    on<DecrementCounter>(onDecrement);
    on<SwitchCounter>(onSwitch);
  }

  void onIncrement(WelcomeEvents event, emit){
    emit(state.copyWith(counter: state.counter+1));
  }
  void onDecrement(WelcomeEvents event, emit){
    emit(state.copyWith(counter: state.counter - 1));
  }

  void onSwitch(WelcomeEvents event, emit){
    emit(state.copyWith(isClick: state.isClick = !state.isClick));
  }
}