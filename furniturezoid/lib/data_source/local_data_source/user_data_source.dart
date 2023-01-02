import 'package:furniturezoid/state/objectbox_state.dart';

import '../../helper/objectbox.dart';
import '../../model/user.dart';
// import 'package:objectbox/objectbox.dart';

class UserDataSource {
  ObjectBoxInstance get objectboxInstance => ObjectBoxState.objectBoxInstance!;
  // or
  ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  get objectBoxInstance => null;
  Future<int> addUser(User user) async {
    try {
      return objectBoxInstance2.addUser(user);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<User>> getAllUser() async {
    try {
      return Future.value(objectBoxInstance2.getAllUser());
    } catch (e) {
      throw Exception('Error getting all user');
    }
  }
}