import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_get_it/services/http_overrides.dart';
import 'package:provider_get_it/userlist/provider/user_provider.dart';

import 'services/service_locato.dart';
import 'userlist/ui/user_page.dart';

void main() {
    setupLocator();
 HttpOverrides.global = CustomHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()..fetchUser()),
      ],
      child: MaterialApp(
        home: UserList(),
      ),
    );
  }
}
