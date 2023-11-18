// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:jsonplaceholderapicall/Model/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('Name\n\n' + user.name)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('Email\n\n' + user.email)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text('Company\n\n' + user.company.name)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
