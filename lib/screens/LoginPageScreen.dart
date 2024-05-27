import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 1000,
        color: const Color(0xFFF6F6F6),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Text(
                  'Boas vindas! :)',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'E-mail',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.none)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF9CCD62))),
                  hintText: 'joao@email.com',
                )),
                const SizedBox(height: 48),
                const Text(
                  'Senha',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
                const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            borderSide:
                                BorderSide(width: 2, style: BorderStyle.none)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide(
                                width: 2, color: Color(0xFF9CCD62))))),
                const SizedBox(
                  height: 32,
                ),
                OutlinedButton(
                    onPressed: () {
                      print('Apertou em entrar');
                    },
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(400, 56)),
                      textStyle: MaterialStatePropertyAll(
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFF6F6F6)),
                      foregroundColor:
                          MaterialStatePropertyAll(Color(0xFF9CCD62)),
                      overlayColor: MaterialStatePropertyAll(Color(0xFF9CCD62)),
                      side: MaterialStatePropertyAll(
                          BorderSide(color: Color(0xFF9CCD62), width: 2)),
                    ),
                    child: const Text('Entrar com e-mail')),
                const SizedBox(height: 16),
                Center(
                    child: TextButton(
                  onPressed: () {
                    print('Apertou esqueceu a senha');
                  },
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black87),
                    overlayColor: MaterialStatePropertyAll(Color(0xFFD2F3AF)),
                    textStyle: MaterialStatePropertyAll(TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline)),
                  ),
                  child: const Text('Esqueci minha senha'),
                )),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text('ou'),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(400, 56)),
                        textStyle: MaterialStatePropertyAll(
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF9CCD62)),
                        overlayColor:
                            MaterialStatePropertyAll(Color(0xFF5F8E29))),
                    child: Text(
                      'Cadastre-se grátis',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
