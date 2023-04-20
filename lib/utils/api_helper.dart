import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:randam_user_api/screen/model/home_model.dart';

class ApiHelper {
  Future<HomeModel?> randomApiCall() async {
    String? apiLink = "https://randomuser.me/api/";
    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      HomeModel homeModel = HomeModel.fromJson(json);
      return homeModel;
    } else {
      return null;
    }
  }
}
