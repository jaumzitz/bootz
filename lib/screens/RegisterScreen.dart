import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final _registerFormKey = GlobalKey<FormState>();

  final List<DropdownMenuEntry> ufs = [
    DropdownMenuEntry(value: 'SC', label: 'SC'),
    DropdownMenuEntry(value: 'PR', label: 'PR'),
    DropdownMenuEntry(value: 'RS', label: 'RS'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        },),
        centerTitle: true,
        title: Text('Cadastro'),
      ),
      body: Form(
        // key: _registerFormKey,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'E-mail',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    TextFormField(
                        // controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        // validator: (value) {
                        //   if (!emailValidator(value)) {
                        //     return 'Insira um e-mail válido';
                        //   }
                        //   return null;
                        // },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              borderSide: BorderSide(
                                  width: 2, style: BorderStyle.none)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF9CCD62))),
                          hintText: 'joao@email.com',
                        )),
                    const SizedBox(height: 48),
                    const Text(
                      'Telefone',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    TextFormField(
                        //controller: passwordController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide: BorderSide(
                                    width: 2, style: BorderStyle.none)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFF9CCD62))))),
                    const SizedBox(
                      height: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Estado',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  decoration: TextDecoration.none),
                            ),
                            DropdownMenu(
                                dropdownMenuEntries: ufs,
                                width: 150,
                                inputDecorationTheme: InputDecorationTheme(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100))),
                                menuStyle: const MenuStyle()),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Cidade',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  decoration: TextDecoration.none),
                            ),
                            DropdownMenu(
                              dropdownMenuEntries: ufs,
                              width: 180,
                              inputDecorationTheme: InputDecorationTheme(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 64.0),
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
                    'Continuar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
