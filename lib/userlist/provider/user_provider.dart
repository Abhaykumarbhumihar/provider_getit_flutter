import 'package:flutter/foundation.dart';
import 'package:provider_get_it/userlist/data/userEntity.dart';

import '../../services/service_locato.dart';
import '../data/user_repo.dart';
import '../data/user_usecase.dart';

class UserProvider extends ChangeNotifier {
  final FetchUserUseCase _fetchUserUseCase;

  UserProvider() : _fetchUserUseCase = FetchUserUseCase(locator<UserRepository>());
  


  List<UserEnity> userlist=[];

  Future<void> fetchUser() async {
    final user = await _fetchUserUseCase.execute();
    userlist = user;


    notifyListeners();
  }


} 