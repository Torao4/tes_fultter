import 'package:flutter/material.dart';
import 'package:test_priksain/theme.dart';
import 'package:test_priksain/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/img_splash.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'WARKOP KIDS NOW',
                      style: blacktextstyle.copyWith(
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tempat untuk nogkrong\ndi temani kopi dan wifi',
                      style: greytextstyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: 210,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const HomePage()),
                            ),
                          );
                        },
                        child: Text(
                          'Pesan Sekarang',
                          style: whitetextstyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
