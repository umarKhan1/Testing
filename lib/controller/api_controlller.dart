import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/vertical_list_model.dart';
class NewApiController extends GetxController{
RxBool isConnected = false.obs;
RxBool isloading = false.obs;
NewsModel newmodel = NewsModel();
  getNewsDetails(context,country) async{
    isloading.value = true;
    isConnected.value = true;
    var data;

    final url = Uri.parse("https://newsapi.org/v2/top-headlines?country=${country.toString().toLowerCase()}&category=business&apiKey=b14d8c5142f84c4aa599342457b6daa6");


    try {
      final response = await http.get(url).timeout(const Duration(seconds: 10));
      if(response.statusCode==200 || response.statusCode==201){


        newmodel= NewsModel.fromJson(jsonDecode(response.body));
        data = jsonDecode(response.body);

        isloading.value = false;
        update();
      }
    } catch (error) {
      if(error is TimeoutException){
        isConnected.value=false;
        isloading.value = false;}
      if(error is SocketException){
        isConnected.value=false;
        isloading.value = false;}
      update();
    }
  }




}