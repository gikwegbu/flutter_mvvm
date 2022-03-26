import 'package:flutter/material.dart';
import '/users_list/models/users_list_model.dart';
import 'package:flutter_mvvm/users_list/models/users_list_model.dart';

import 'app_title.dart';

class UserListRow extends StatelessWidget {
  final UserModel? userModel;
  final VoidCallback onTap;
  const UserListRow({
    Key? key,
    this.userModel,
     required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTitle(text: userModel!.name.toString()),
            Text(
              userModel!.email.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
