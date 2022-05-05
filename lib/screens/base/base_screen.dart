import 'package:flutter/material.dart';
import 'package:xlo_mobx/screens/base/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({ Key? key }) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeScheen(),
          Container(color: Colors.red,),
          Container(color: Colors.purple,),
          Container(color: Colors.white,),
          Container(color: Colors.brown,),
        ],
      )
      
    );
  }
}