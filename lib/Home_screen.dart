
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
import 'package:getx_tutorial/controller/login_controller.dart';
import 'package:getx_tutorial/widgets/Custom_appbar.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Logincontroller controller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: "Home Screen"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 50),
            backgroundColor: Colors.black,
            foregroundColor: Colors.blue
          ),
          onPressed: (){
           Get.toNamed("/ScreenOne");
          }, child: const Text("Home Button"))
        ],
      ),
    );
  }
}