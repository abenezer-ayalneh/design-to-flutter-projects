import 'package:states_rebuilder/states_rebuilder.dart';

ReactiveModel<OnboardingPageState> onboarding_page_state =
    Injector.getAsReactive<OnboardingPageState>();

class OnboardingPageState {
  /// Index of the current page to be shown in the onboarding page
  int current_page_index = 0;
}
