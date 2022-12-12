import 'package:states_rebuilder/states_rebuilder.dart';

ReactiveModel<SignupPageState> signup_page_state =
    Injector.getAsReactive<SignupPageState>();

class SignupPageState {
  /// Indicator if the checkbox is checked or not
  bool isChecked = true;
}
