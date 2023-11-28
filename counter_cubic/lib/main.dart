import 'package:counter_cubic/counter_cubit/counter_cubit.dart';
import 'package:counter_cubic/counter_cubit/cubit_observer.dart';
import 'package:counter_cubic/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
  Bloc.observer = CubitObserver();
  
}




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(5),
        child: const MyPage(),
      ),
    );
  }
}

