import 'package:cubit/cubit.dart';

class MainCubitObserver extends CubitObserver {
  @override
  void onTransition(Cubit cubit, Transition transition) {
    print("onTransition in MainCubitObserver, \"GeneralWatcher\" $transition");
    super.onTransition(cubit, transition);
  }
}
