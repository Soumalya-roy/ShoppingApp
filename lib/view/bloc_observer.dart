import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  // @override
  // Future<void> onEvent(Bloc bloc, Object event) async {
  //   super.onEvent(bloc, event);
  //   print(event);
  // }
}

// void main() {
//   Bloc.observer = SimpleBlocObserver();
//   runApp(MyApp());
// }
