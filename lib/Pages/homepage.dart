import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jsonplaceholderapicall/Controller/usercontroller.dart';
import 'package:jsonplaceholderapicall/Widget/usertile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userC = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('User Show')),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (userC.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: userC.userList.length,
                  itemBuilder: (context, index) {
                    return UserTile(user: userC.userList[index]);
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
