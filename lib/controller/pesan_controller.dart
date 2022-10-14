import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_priksain/models/menu_model.dart';
import 'package:test_priksain/theme.dart';

class PesanController extends GetxController {
  var kopi = 0.obs;
  var teh = 0.obs;
  var mie = 0.obs;
  var pesanan =
      PesananModel(id: 0, name: "name", imageUrl: "imageUrl", harga: 0, qty: 0)
          .obs;
  bool isIniate = false;

  increment(PesananModel pesananModel) {
    if (!isIniate) {
      pesanan.value = pesananModel;
      isIniate = true;
    }

    // kopi.value++;
    pesanan.value.qty++;
    return pesanan;
  }

  decrement(PesananModel pesananModel) {
    if (pesanan.value.qty <= 0) {
      Get.snackbar(
        'Tolong',
        'Anda belum menambahkan pesanan',
        colorText: orangeColor,
        icon: const Icon(Icons.alarm),
        barBlur: 18,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      if (!isIniate) {
        pesanan.value = pesananModel;
        isIniate = true;
      }
      // kopi.value--;
      pesanan.value.qty--;
    }
    return pesanan;
  }
}
