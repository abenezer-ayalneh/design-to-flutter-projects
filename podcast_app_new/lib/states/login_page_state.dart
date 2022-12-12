import 'package:states_rebuilder/states_rebuilder.dart';

ReactiveModel<LoginPageState> login_page_state =
    Injector.getAsReactive<LoginPageState>();

class LoginPageState {
  /// Indicator if the checkbox is checked or not
  bool isChecked = false;
}
