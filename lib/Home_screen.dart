
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx_routes/screen_one.dart';
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
  final CounterController controller = Get.put(CounterController());
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppbar(titleText: "Home Screen",),
      body: Center(
        child: Obx(()=>   Text(controller.counter.toString()),),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        controller.increamentcounter();
      },
      label: const Text("Add"),
      icon: const Icon(Icons.add),),
    );
  }
}