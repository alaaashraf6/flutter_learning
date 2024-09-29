
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app_on_udemy/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit():super(CounterInitialState());

  static  CounterCubit get(context)=>  BlocProvider.of(context) ;
  
  int counter =1;

  void minus (){
    counter--;
    emit(CounterMinustate(counter :counter ));
  }
   void plus (){
    counter--;
    emit(CounterPlustate(counter: counter));

  }
  
  
}