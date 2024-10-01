import 'package:flutter/foundation.dart';
import 'package:provider_get_it/userlist/data/entities/userEntity.dart';

import '../../../services/service_locato.dart';
import '../../domain/repositery/user_repo.dart';
import '../../domain/usecase/user_usecase.dart';

class UserProvider extends ChangeNotifier {
  final FetchUserUseCase _fetchUserUseCase;

  UserProvider() : _fetchUserUseCase = FetchUserUseCase(locator<UserRepository>());

  List<UserEnity> _userList = [];
  String? _errorMessage;

  List<UserEnity> get userList => _userList;
  String? get errorMessage => _errorMessage;


  Future<void> fetchUser() async {

    _errorMessage = null;

    final eitherResult = await _fetchUserUseCase.execute();

    eitherResult.fold(
          (failure) {
        _errorMessage = failure.message;
        debugPrint('Error fetching users: ${failure.message}');
        notifyListeners();
      },
          (users) {
        _userList = users;
        notifyListeners();
      },
    );
  }
}
