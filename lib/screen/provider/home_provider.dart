import 'package:flutter/cupertino.dart';
import 'package:randam_user_api/screen/model/home_model.dart';
import '../../utils/api_helper.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();

  Future<HomeModel?> getData() async {
    HomeModel? homeModel;
    homeModel = await apiHelper.randomApiCall();
    return homeModel;
  }
}
