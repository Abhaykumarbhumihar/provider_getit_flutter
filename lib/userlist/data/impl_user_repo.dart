import 'dart:convert';

import 'package:provider_get_it/userlist/data/userEntity.dart';

import '../../services/api_services.dart';
import 'user_repo.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  final ApiServices _apiServices;

  UserRepositoryImpl(this._apiServices);

  Future<List<UserEnity>> fetchUser() async {
    try {
      final response = await _apiServices.get('/users');

      // Directly decode the response body as a list
      final List<dynamic> jsonList = jsonDecode(response.body);

      // Map each item in the list to UserEnity
      final List<UserEnity> users = jsonList.map((json) => UserEnity.fromJson(json)).toList();

      return users;
    } catch (e) {
      throw Exception('Failed to fetch user: $e');
    }
  }
}