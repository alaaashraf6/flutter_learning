abstract class  CounterState {}
 class  CounterInitialState extends CounterState{}
 class  CounterMinustate extends CounterState{
  final int counter ;

  CounterMinustate({required this.counter});
 }
 class  CounterPlustate extends CounterState{
  final int counter ;

  CounterPlustate({required this.counter});

 }