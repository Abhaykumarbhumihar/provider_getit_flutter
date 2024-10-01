import 'package:either_dart/either.dart';
import 'package:provider_get_it/userlist/data/entities/userEntity.dart';

import '../../../services/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEnity>>>  fetchUser();
}