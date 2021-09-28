import 'package:get/get.dart';

import '../controllers/leather_bag_controller.dart';

class LeatherBagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeatherBagController>(
      () => LeatherBagController(),
    );
  }
}
