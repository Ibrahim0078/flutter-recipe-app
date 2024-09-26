import 'dart:convert';

import 'package:http/http.dart' as http;

class ConstantFunction{


  static Future<List<Map<String,dynamic>>> getResponse(String findrecipe) async{

    String id = '53e11b71';
    String key = 'b47001d24d2dcacb18f2d1815f5f3300';
    String api = "https://api.edamam.com/search?q=$findrecipe&app_id=$id&app_key=$key&from=0&to=3&calories=591-722&health=alcohol-free";
    final response = await http.get(Uri.parse(api));
    List<Map<String,dynamic>> recipe = [];
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      if(data['hits']!=null){
        for(var hit in data['hits']) {
          recipe.add(hit['recipe']);
        }
      }
      return recipe;
    }
    return recipe;
  }
}