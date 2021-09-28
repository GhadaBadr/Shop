import 'package:get/get.dart';

import '../controllers/lap_top_controller.dart';

class LapTopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LapTopController>(
      () => LapTopController(),
    );
  }
}
