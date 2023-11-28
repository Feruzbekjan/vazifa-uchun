import 'package:flutter_bloc/flutter_bloc.dart';

class CubitObserver extends BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
  }
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print("$bloc , $error, $stackTrace");
    super.onError(bloc, error, stackTrace);
  }
}