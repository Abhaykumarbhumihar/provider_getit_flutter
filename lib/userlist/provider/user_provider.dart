import 'package:flutter/foundation.dart';
import 'package:provider_get_it/userlist/data/userEntity.dart';

import '../../services/service_locato.dart';
import '../data/user_repo.dart';
import '../data/user_usecase.dart';

class UserProvider extends ChangeNotifier {
  final FetchUserUseCase _fetchUserUseCase;

  UserProvider() : _fetchUserUseCase = FetchUserUseCase(locator<UserRepository>());






  List<UserEnity> _userList = [];

  List<UserEnity> get userList => _userList;


  Future<void> fetchUser() async {
    try {
      final List<UserEnity> users = await _fetchUserUseCase.execute();
      _userList = users;
      notifyListeners();
    } catch (error) {
      print('Error fetching users: $error');
    }
  }

}