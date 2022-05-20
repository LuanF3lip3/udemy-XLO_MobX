import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xlo_mobx/components/field_title.dart';
import 'package:xlo_mobx/screens/login/login_screen.dart';
import 'package:xlo_mobx/stores/signup_store.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({ Key? key }) : super(key: key);

  final SignupStore signupStore = SignupStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastre-se"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Padding(padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const FieldTitle(
                  title: 'Nome',
                  subtitle: '',
                ),
                 Observer(
                   builder: (_) {
                     return TextField(
                    onChanged: signupStore.setName,
                    decoration: InputDecoration(
                      errorText: signupStore.nameError,
                      border: const OutlineInputBorder(),
                      hintText: 'EX: Maria, Joao...',
                      isDense: true,
                    ),
                    keyboardType: TextInputType.name,
                    );
                   },
                 ),
                const SizedBox(height: 12,),
                const FieldTitle(
                  title: 'E-mail',
                  subtitle: '',
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'EX: Maria@gmail.com',
                    isDense: true,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12,),
                const FieldTitle(
                  title: 'Celular',
                  subtitle: '',
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'EX: (99) 99999-9999',
                    isDense: true,
                    
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    TelefoneInputFormatter(),
                  ],
                ),
                const SizedBox(height: 12,),
                const FieldTitle(
                  title: 'Senha',
                  subtitle: 'Use numeros e caracteres',
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(height: 12,),
                const FieldTitle(
                  title: 'Confirme a senha',
                  subtitle: 'Repita a senha',
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    height: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      child: const Text('Cadastrar'),
                      onPressed: (){},
                    ),
                  ),
                  const Divider(color: Colors.black,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Ja tem conta?",
                     style: TextStyle(
                        fontSize: 16,
                        ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const LoginScreen())
                        );
                      },
                      child: const Text('Entrar',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),)
                    ),
                  ],
                ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}