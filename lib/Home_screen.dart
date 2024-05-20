
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
import 'package:getx_tutorial/controller/Example_three_controller.dart';
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
  ExampleThreeController exampleThreeController = Get.put(ExampleThreeController());
  bool Notification = false;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      
      appBar: CustomAppbar(titleText: "Home Screen",),
      body: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
Obx((){
  return Switch(value:exampleThreeController.Notification.value , onChanged: (value){
            exampleThreeController.setNotification(value);

          });
}
          ),

          
        ],
      )
    );
  }
}