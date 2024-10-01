import 'package:provider_get_it/userlist/data/userEntity.dart';

abstract class UserRepository {
  Future<List<UserEnity>> fetchUser();
}