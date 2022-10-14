import 'package:flutter/material.dart';
import 'package:test_priksain/theme.dart';
import 'package:test_priksain/widgets/item_card.dart';

import '../models/menu_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              // note: title/header
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Menu',
                  style: blacktextstyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Text(
                  'Pilih menu dan langsung bayar',
                  style: greytextstyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  ItemCard(
                    pm: PesananModel(
                      id: 1,
                      name: 'Kopi',
                      imageUrl: 'assets/images/kopi.png',
                      harga: 5000,
                    ),
                  ),
                  ItemCard(
                    pm: PesananModel(
                      id: 2,
                      name: 'Es Teh',
                      imageUrl: 'assets/images/esteh.png',
                      harga: 3000,
                    ),
                  ),
                  ItemCard(
                    pm: PesananModel(
                      id: 3,
                      name: 'Mie Goreng',
                      imageUrl: 'assets/images/mie.png',
                      harga: 6000,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// List<PesananModel> data() {
//   List<PesananModel> p = [];

//   p.add(PesananModel(
//       id: 1, name: "Kopi", imageUrl: 'assets/images/mie.png', harga: 6000));

//   p.add(PesananModel(
//       id: 2, name: "Kopi", imageUrl: 'assets/images/mie.png', harga: 6000));

//   p.add(PesananModel(
//       id: 3, name: "Kopi", imageUrl: 'assets/images/mie.png', harga: 6000));

//   return p;
// }
