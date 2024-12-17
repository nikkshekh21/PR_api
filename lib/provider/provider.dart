import 'package:flutter/material.dart';
import 'package:pr_api/helper/helper.dart';
import 'package:pr_api/models/country_model.dart';

class HomepageProvider with ChangeNotifier {
  countryModel? countrymodel = countryModel();

  Future<countryModel?> getdata() async {
    countrymodel = await Companyapi().Getdata();
    print(countrymodel?.totalResults);

    notifyListeners();
  }
}
