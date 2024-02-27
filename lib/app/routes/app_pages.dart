import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_pic_pac/app/modules/task33/bindings/task33_binding.dart';
import 'package:get_pic_pac/app/modules/task33/views/task33_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.GAME;

  static final routes = [
    GetPage(
      name: _Paths.GAME,
      page: () =>  Task33View(),
      binding: Task33Binding(),
    ),
  ];
}