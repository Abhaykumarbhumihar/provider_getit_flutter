import 'package:provider_get_it/userlist/data/userEntity.dart';

import 'user_repo.dart';

class FetchUserUseCase {
  final UserRepository _userRepository;

  FetchUserUseCase(this._userRepository);

  Future<List<UserEnity>> execute() async {
    return await _userRepository.fetchUser();
  }
}