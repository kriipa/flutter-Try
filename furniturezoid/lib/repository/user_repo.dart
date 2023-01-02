
import 'package:furniturezoid/data_source/local_data_source/user_data_source.dart';

import '../model/user.dart';

abstract class UserRepository{
  Future<List<User>> getAllUser();
  Future<int> addUser(User user);
}

class UserRepositoryImpl extends UserRepository{
  @override
  Future<int> addUser(User user) {
    return UserDataSource().addUser(user);
  }
  
  @override
  Future<List<User>> getAllUser() {
    return UserDataSource().getAllUser();
  }

  // @override
  // Future<List<User>> getUser() {
  //   return UserDataSource().getAllUser();
  // }
}