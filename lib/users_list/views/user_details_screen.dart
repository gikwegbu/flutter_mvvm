import 'package:flutter/material.dart';
import 'package:flutter_mvvm/components/app_title.dart';
import 'package:flutter_mvvm/users_list/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(usersViewModel.selectedUser!.name.toString()),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTitle(text: usersViewModel.selectedUser!.name.toString()),
            const SizedBox(height: 5.0),
            Text(
              usersViewModel.selectedUser!.email.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 5.0),
            Text(
              usersViewModel.selectedUser!.phone.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 5.0),
            Text(
              usersViewModel.selectedUser!.website.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 5.0),
            Text(
              usersViewModel.selectedUser!.address!.street.toString(),
              style: const TextStyle(color: Colors.black),
            ),
            Text(
              usersViewModel.selectedUser!.address!.city.toString(),
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
