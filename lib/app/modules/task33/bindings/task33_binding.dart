import 'package:get/get.dart';

import '../controllers/task33_controller.dart';

class Task33Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Task33Controller>(
      () => Task33Controller(),
    );
  }
}
