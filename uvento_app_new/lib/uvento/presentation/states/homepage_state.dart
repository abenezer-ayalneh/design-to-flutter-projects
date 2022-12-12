import 'package:states_rebuilder/states_rebuilder.dart';

ReactiveModel<HomepageState> homepageState =
    Injector.getAsReactive<HomepageState>();

class HomepageState {
  /// For the current index of the bottom navigation bar
  int currentPageIndex = 0;
}
