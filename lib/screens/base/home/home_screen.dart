import 'package:flutter/material.dart';
import 'package:xlo_mobx/components/custom_drawer/drawer.dart';

class HomeScheen extends StatelessWidget {
  const HomeScheen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomDrawer(),
    );
  }
}