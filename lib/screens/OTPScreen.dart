import 'package:bootz_test/screens/DefinePasswordScreen.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        },),
        centerTitle: true,
        title: Text('Código de Segurança'),
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
                    const SizedBox(height: 150,),
                    const Text(
                      'Digite o código enviado por SMS',
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

                        )),
                    const SizedBox(height: 48),
                    Center(child: TextButton(onPressed: null, child: Text('Reenviar código'))),


                  ]),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 64.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DefinePasswordScreen()));
                  },
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
            ),

          ],
        ),
      ),
    );;
  }
}
