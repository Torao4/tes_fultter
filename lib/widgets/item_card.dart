// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_priksain/controller/pesan_controller.dart';
import 'package:test_priksain/models/menu_model.dart';
import 'package:test_priksain/theme.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    Key? key,
    required this.pm,
  }) : super(key: key);

  final PesanController pc = Get.put(PesanController());
  final PesananModel pm;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  pm.imageUrl,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pm.name,
              style: blacktextstyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: pm.harga.toString(),
                style: purpletextstyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Expanded(child: Container()),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: purpleColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.remove,
                  color: whiteColor,
                ),
                onPressed: () => pc.decrement(pm),
                color: whiteColor,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Obx(() => Text(
                  pc.pesanan.value.qty.toString(),
                  style: blacktextstyle,
                )),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: purpleColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: whiteColor,
                ),
                onPressed: () {
                  pc.increment(pm);
                },
                color: whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
