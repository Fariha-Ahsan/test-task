import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:test_task/models/product.dart';

class RemoteServices{
  Future<List<ProductElement>> getData() async{
    var client = http.Client();
    var model=null;
    try {
      var url = Uri.parse(
          'https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9');
      var response = await client.get(url);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        model = ProductElement.fromJson(jsonMap);
      }
    }catch(Exception){
      return model;
    }
    return model;
  }
}