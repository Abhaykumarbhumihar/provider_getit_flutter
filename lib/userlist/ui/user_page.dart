import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_it/userlist/provider/user_provider.dart';

// Define a User class to hold the data for each user
class User {
  final String name;
  final String email;
  final String userImage;

  User({required this.name, required this.email, required this.userImage});
}


class UserList extends StatefulWidget {

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
Provider.of<UserProvider>(context).fetchUser();
    // Sample list of user data
    List<User> users = [
      User(name: 'John Doe', email: 'john.doe@example.com', userImage: 'assets/images/user1.jpg'),
      User(name: 'Jane Smith', email: 'jane.smith@example.com', userImage: 'assets/images/user2.jpg'),
      User(name: 'Bob Johnson', email: 'bob.johnson@example.com', userImage: 'assets/images/user3.jpg'),
    ];

    return MaterialApp(
      title: 'ListView with User Data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with User Data'),
        ),
        // Use a ListView.builder to create the list of users
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
            
              title: Text(users[index].name),
              subtitle: Text(users[index].email),
              onTap: () {
                // Handle onTap event if needed
                print('User tapped: ${users[index].name}');
              },
            );
          },
        ),
      ),
    );
  }
}
