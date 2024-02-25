import 'dart:convert';

import 'package:provider_get_it/userlist/data/userEntity.dart';

import '../../services/api_services.dart';
import 'user_repo.dart';

class UserRepositoryImpl implements UserRepository {
  @override
   final ApiServices _apiServices;

  UserRepositoryImpl(this._apiServices);
  Future<UserEnity> fetchUser()async {
     try {

      final response = await _apiServices.get('/users');
      final json = jsonDecode(response.body);
      final user =UserEnity.fromJson(json);
      return user;
    } catch (e) {
      throw Exception('Failed to fetch user: $e');
    }
  }
}
