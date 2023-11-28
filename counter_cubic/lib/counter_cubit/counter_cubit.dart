import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int inittilize) : super(inittilize);

  @override
  void onError(Object error, StackTrace stackTrace) {
    //print("$error  $stackTrace");
    super.onError(error, stackTrace);
  }

  @override
  void onChange(Change<int> change) {
    

    super.onChange(change);
  }

  void increment() {
     addError(Exception("bu error"));
     emit(state + 1);
  }
  void decrement() => emit(state - 1);
}
