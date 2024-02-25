import 'package:get_it/get_it.dart';

import '../userlist/data/impl_user_repo.dart';
import '../userlist/data/user_repo.dart';
import '../userlist/data/user_usecase.dart';
import 'api_services.dart';

final locator = GetIt.instance;

void setupLocator() {
   locator.registerSingleton(ApiServices('https://jsonplaceholder.typicode.com/users'));
  locator.registerSingleton<UserRepository>(UserRepositoryImpl(locator<ApiServices>()));
  locator.registerSingleton<FetchUserUseCase>(FetchUserUseCase(locator<UserRepository>()));


}