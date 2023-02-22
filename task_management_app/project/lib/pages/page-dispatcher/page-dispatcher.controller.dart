import 'package:get/get.dart';

class PageDispatcherController extends GetxController {
  RxInt selectedIndex = 0.obs;

  setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
