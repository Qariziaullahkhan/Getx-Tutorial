
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller:controller.emailcontroller.value ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Email"
            ),
          ),
             TextFormField(
            controller:controller.passwordcontroller.value ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Password"
            ),
          ),
          const SizedBox(height: 50,),
          InkWell(
            onTap: () {
              controller.LoginApi();
            },
            child: Container(
              height: 50,
              width: 100,
              
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: const Text("Login",
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
    );
  }
}