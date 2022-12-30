// import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:furniturezoid/objectbox.g.dart';

import '../model/furniture.dart';
import '../model/user.dart';

class ObjectBoxInstance {
  late final Store _store;
  late final Box<Furniture> _furniture;
  late final Box<User> _user;

  ObjectBoxInstance(this._store) {
    _furniture = Box<Furniture>(_store);
    _user = Box<User>(_store);

    insertFurniture();
  }
  // initialization of ObjectBox
  static Future<ObjectBoxInstance> init() async {
    var dir = await getApplicationDocumentsDirectory();
    final store = Store(
      getObjectBoxModel(),
      directory: '${dir.path}/user_choices',
    );
    return ObjectBoxInstance(store);
  }

  // Batch Queries
  int addFurniture(Furniture furniture) {
    return _furniture.put(furniture);
  }

  List<Furniture> getAllFurniture() {
    return _furniture.getAll();
  }

  int addUser(User user) {
    return _user.put(user);
  }

  List<User> getUser() {
    return _user.getAll();
  }

  void insertFurniture() {
    List<Furniture> lstBatches = getAllFurniture();
    if (lstBatches.isEmpty) {
      addFurniture(Furniture('Sofa'));
      addFurniture(Furniture('Ready-made'));
      addFurniture(Furniture('Customized'));
      addFurniture(Furniture('Table'));
    }
  }
}