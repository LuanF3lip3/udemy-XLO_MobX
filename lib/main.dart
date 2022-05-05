import 'package:flutter/material.dart';
// import 'package:parse_server_sdk_flutter/generated/i18n.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'screens/base/base_screen.dart';

void main() async{
 
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
  runApp(const Home());


//   final category = ParseObject('Categories')
//   ..set('title', 'Camisetas')
//   ..set('posiction', 2);

//   final response = await category.save();

//   print(response.success);

// ParseObject('Categories').getAll();
}


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}