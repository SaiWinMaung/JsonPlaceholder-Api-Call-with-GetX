// ignore_for_file: unnecessary_null_comparison

import 'package:get/get.dart';
import 'package:jsonplaceholderapicall/Database/userapi.dart';
import 'package:jsonplaceholderapicall/Model/user.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    try {
      isLoading(true);
      var users = await ApiService.fetchUser();
      if (users != null) {
        userList.value = users;
      }
    } finally {
      isLoading(false);
    }
  }
}
