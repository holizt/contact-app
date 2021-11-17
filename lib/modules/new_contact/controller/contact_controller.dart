import 'package:get/get.dart';

class ContactController extends GetxController {
  var isSMA = true.obs;
  var isOffice = true.obs;

  get showSMA => isSMA.value = false;
  get showOffice => isOffice.value = false;

  void addAllItem() {
    isSMA.value = true;
    isOffice.value = true;
  }
}
