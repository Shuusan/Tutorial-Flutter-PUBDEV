import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();

  final RxInt _obj = 0.obs;
  set obj(int value) => _obj.value = value;
  int get obj => _obj.value;
}
