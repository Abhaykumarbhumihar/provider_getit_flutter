import 'dart:convert';

import 'package:provider_get_it/userlist/data/userEntity.dart';

import '../../services/api_services.dart';
import 'user_repo.dart';

class UserRepositoryImpl implements UserRepository {

  final ApiServices _apiServices;

  UserRepositoryImpl(this._apiServices);

  @override
  Future<List<UserEnity>> fetchUser() async {
    try {
      final response = await _apiServices.get('/users');
      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<UserEnity> users = jsonList.map((json) => UserEnity.fromJson(json)).toList();
      return users;
    } catch (e) {
      throw Exception('Failed to fetch user: $e');
    }
  }
}