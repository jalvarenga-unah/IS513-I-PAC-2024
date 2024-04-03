import 'package:get/get.dart';

class HomeController extends GetxController {
  // crear propiedades Observables
  final RxInt _currentIndex = 0.obs;

  //getters y setters
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;
}
