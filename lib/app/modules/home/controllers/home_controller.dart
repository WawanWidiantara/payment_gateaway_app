import 'package:get/get.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  RxBool isLoading = false.obs;
  var stringUrl = ''.obs;
  var user = "".obs;

  List<String> items = [
    "Semua",
    "Komputer",
    "Hardware",
    "Aksesoris",
  ];

  List<String> icons = [
    'assets/icons/icon all item.svg',
    'assets/icons/icon makanan.svg',
    'assets/icons/icon minuman.svg',
    'assets/icons/icon snack.svg',
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
