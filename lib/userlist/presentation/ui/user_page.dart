import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView with User Data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with User Data'),
        ),
        body: Consumer<UserProvider>(
          builder: (context, userProvider, child) {

            if (userProvider.userList.isEmpty) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: userProvider.userList.length,
              itemBuilder: (context, index) {
                final user = userProvider.userList[index];
                return ListTile(
                  title: Text(user.name ?? 'No Name'),
                  subtitle: Text(user.email ?? 'No Email'),
                  onTap: () {
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
