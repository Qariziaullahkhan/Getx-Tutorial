import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
import 'package:getx_tutorial/Getx_routes/screen_two.dart';
import 'package:getx_tutorial/Home_screen.dart';
import 'package:getx_tutorial/getx_localization/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      fallbackLocale: Locale("en","US"),
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [GetPage(name: "/", page:()=>HomeScreen()),
      GetPage(name: "/ScreenOne", page: ()=>ScreenOne(name: ""),),
GetPage(name: "/ScreenTwo", page: ()=> ScreenTwo()),

      ],
    );
  }
}

