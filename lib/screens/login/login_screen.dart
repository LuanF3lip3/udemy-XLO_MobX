import 'package:flutter/material.dart';
import 'package:xlo_mobx/screens/singup/singup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrar"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Padding(padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Acessar com E-mail",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 3,bottom: 4, top: 8),
                  child: Text("E-mail",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[700],
                    ),
                   ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(),
                    isDense: true,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 14,),
                  Padding(padding: const EdgeInsets.only(left: 3,bottom: 4,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Senha",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800],
                        ),
                       ),
                       GestureDetector(
                         child: const Text("Esqueceu sua senha?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w700,
                        color: Colors.purple,
                        ),
                       ),
                       onTap: (){},
                       )
                    ],
                  ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(),
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
                        child: const Text('Entrar'),
                        onPressed: (){},
                      ),
                    ),
                    const Divider(color: Colors.black,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Nao tem uma conta?",
                       style: TextStyle(
                          fontSize: 16,
                          ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SingupScreen())
                          );
                        },
                        child: const Text('Cadastre-se',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),)
                      ),
                    ],
                  )
                ],
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}