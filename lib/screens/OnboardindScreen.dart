import 'package:bootz_test/screens/LoginPageScreen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(
            'assets/images/onboarding.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            height: 370,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore lugares incríveis',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Descubra e explore a natureza com Bootz',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Se exercite, conheça pessoas e aventure-se nas mais belas paisagens ao redor do mundo.',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(400, 56)),
                        textStyle: MaterialStatePropertyAll(TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF9CCD62)),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFF5F8E29))),
                    child: const Text(
                      'Começar',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                      child: TextButton(
                          onPressed: null, child: Text('Termos de uso')))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
