import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:provider_get_it/userlist/data/entities/userEntity.dart';

import '../../../services/api_services.dart';
import '../../../services/failure.dart';
import '../../domain/repositery/user_repo.dart';

class UserRepositoryImpl implements UserRepository {

  final ApiServices _apiServices;

  UserRepositoryImpl(this._apiServices);

  @override
  Future<Either<Failure, List<UserEnity>>> fetchUser() async {
    try {
      final response = await _apiServices.get('/users');
      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<UserEnity> users = jsonList.map((json) => UserEnity.fromJson(json)).toList();
      return Right(users);
    } catch (e) {
      return Left(Failure('Failed to fetch users: $e'));
    }
  }
}