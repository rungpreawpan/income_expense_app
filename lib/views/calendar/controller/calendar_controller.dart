import 'package:get/get.dart';

class CalendarController extends GetxController {
  var isLoading = false.obs;

  DateTime selectedDate = DateTime.now();
}