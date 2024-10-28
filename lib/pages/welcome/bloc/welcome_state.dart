class WelcomeState{
  final int counter;
  bool isClick;
   WelcomeState({this.counter =0,this.isClick =false});

  WelcomeState copyWith({int? counter, bool? isClick}){
    return WelcomeState(
      counter: counter ?? this.counter,
          isClick: isClick ?? this.isClick,
    );
  }

}