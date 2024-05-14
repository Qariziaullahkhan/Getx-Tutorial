import 'dart:convert';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Logincontroller extends GetxController{
  final emailcontroller = TextEditingController().obs;
    final passwordcontroller = TextEditingController().obs ;
      RxBool loading = false.obs ;

    void LoginApi()async{
          loading.value = true ;

      try{
           
      final response = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
        "email": emailcontroller.value.text.toString(),
        "password": passwordcontroller.value.text.toString()
      });

 
      var data = jsonDecode(response.body);
    print(response.statusCode);
    if(response.statusCode == 200){
              loading.value = false ;

      Get.snackbar("login Succesfully", "Congratulations");

    }
    else{
              loading.value = false ;

      Get.snackbar("login Failed", data["Error"]);
    }
      }
      catch(e)
      {
                loading.value = false ;

      Get.snackbar("Exception", e.toString());

      }
  
    }

}