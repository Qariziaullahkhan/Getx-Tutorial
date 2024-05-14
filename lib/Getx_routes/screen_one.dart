
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
import 'package:getx_tutorial/Getx_routes/screen_two.dart';
import 'package:getx_tutorial/controller/login_controller.dart';
import 'package:getx_tutorial/widgets/Custom_appbar.dart';
import 'package:http/http.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key,required this.name});

  @override
  State<ScreenOne> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ScreenOne> {
  Logincontroller controller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: "Home Screen"+ widget.name),
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
Get.toNamed("/ScreenTwo");          }, child: const Text("Screen One"))
        ],
      ),
    );
  }
}