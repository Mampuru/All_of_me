import 'package:get/get.dart';

class CardInfoController extends GetxController {
  var idInfo = "Your ID info here".obs;
  var driversCardInfo = "Driver's card info here".obs;
  var passportInfo = "Your passport info here".obs;

  updateIdInfo(String newInfo) {
    idInfo.value = newInfo;
  }

  updateDriversCardInfo(String newInfo) {
    driversCardInfo.value = newInfo;
  }

  updatePassportInfo(String newInfo) {
    passportInfo.value = newInfo;
  }
}
