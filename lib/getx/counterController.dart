import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // Make the variable reactive

  void increment() {
    count++; // This will automatically trigger UI updates
  }
}
