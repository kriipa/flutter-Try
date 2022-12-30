
import 'package:furniturezoid/helper/objectbox.dart';
// import'package:objectbox/objectbox.dart';


import '../../model/furniture.dart';
import '../../state/objectbox_state.dart';

class FurnitureDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;

  Future<int> addFurniture(Furniture furniture) async {
    try {
      return objectBoxInstance.addFurniture(furniture);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<Furniture>> getFurniture() async {
    try {
      return objectBoxInstance.getAllFurniture();
    } catch (e) {
      return Future.value([]);
    }
  }
}