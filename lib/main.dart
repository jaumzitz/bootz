import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 800,
        color: const Color(0xFFF6F6F6),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Text(
                  'Boas vindas',
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
                      overlayColor: MaterialStatePropertyAll(Colors.black87),
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
                    textStyle: MaterialStatePropertyAll(TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline)),
                  ),
                  child: const Text('Esqueci minha senha'),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
