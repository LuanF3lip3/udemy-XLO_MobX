import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
// import 'package:parse_server_sdk_flutter/generated/i18n.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/stores/page_store.dart';

import 'screens/base/base_screen.dart';

void main() async{

  void setupLocators() {
    GetIt.I.registerSingleton(PageStore());
  }
 
   Future initializeParse() async {
    await Parse().initialize(
    'mpAt9vNjfd7ALgw5oxW5PLjSXBHGUEdTEXzlar97',
    'https://parseapi.back4app.com/',
    clientKey: 'AeqLw5WUlgREbQ0Xq8zYVImkFVpCtMtq3y7TjePS',
    debug: true,
    autoSendSessionId: true,
  );
  }
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(const MyApp());

//   final category = ParseObject('Categories')
//   ..set('title', 'Camisetas')
//   ..set('posiction', 2);

//   final response = await category.save();

//   print(response.success);

// ParseObject('Categories').getAll();
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XLO',
      theme: ThemeData(
        bottomAppBarColor: Colors.orange,
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
          elevation: 0,
        ), 
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.orange),
      ),
      home: const BaseScreen(),
    );
  }
}