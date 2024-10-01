import 'package:either_dart/either.dart';
import 'package:provider_get_it/userlist/data/entities/userEntity.dart';

import '../../../services/failure.dart';
import '../repositery/user_repo.dart';

class FetchUserUseCase {
  final UserRepository _userRepository;

  FetchUserUseCase(this._userRepository);

  Future<Either<Failure, List<UserEnity>>> execute() async {
    return await _userRepository.fetchUser();
  }
}