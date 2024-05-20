
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
import 'package:getx_tutorial/controller/Example_two_controller.dart';
import 'package:getx_tutorial/controller/counter_example.dart';
import 'package:getx_tutorial/controller/login_controller.dart';
import 'package:getx_tutorial/widgets/Custom_appbar.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppbar(titleText: "Home Screen",),
      body: Column(
        children: [
          Obx(()=>Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(exampleTwoController.Opacity.value)

          ),),
          Obx(()=>Slider(value: exampleTwoController.Opacity.value, onChanged: (value){
            print(value);
            exampleTwoController.setopacity(value);
          })),
          
        ],
      )
    );
  }
}