import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/country_model.dart';

class Companyapi {
  String link =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=025bf0de4a5e48cfa4ba8daab65d53f5";
  Future<countryModel?> Getdata() async {
    http.Response response = await http.get(Uri.parse(link),
        headers: {"country": "us", "category": "business"});

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      countryModel modal = countryModel.maptomodel(json);
      return modal;
    } else {
      print("*-*-error*-*- ${response.body}");
      print("===============");
      return null;
    }
  }
}
