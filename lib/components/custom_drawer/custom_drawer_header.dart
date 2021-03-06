import 'package:flutter/material.dart';
import 'package:xlo_mobx/screens/login/login_screen.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const LoginScreen())
        );
      },
      child: Container(
        color: Colors.purple,
        height: MediaQuery.of(context).size.height * 0.12,
        padding: const EdgeInsets.all(20),
        child: Row(
          children:[
            const Icon(Icons.person, color: Colors.white, size: 35,
            ),
            const SizedBox( width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                   Text('Acesse sua conta agora!',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 16,
                     fontWeight: FontWeight.w500
                   ),
                  ),
                  Text('Clique aqui!',
                  style: TextStyle(
                     color: Colors.blue,
                     fontSize: 14,
                     fontWeight: FontWeight.w400
                   ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}