import 'package:get/get.dart';

import '../controllers/game_controller_controller.dart';

class GameControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameControllerController>(
      () => GameControllerController(),
    );
  }
}
