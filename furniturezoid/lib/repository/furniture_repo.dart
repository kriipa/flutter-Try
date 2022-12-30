import 'package:furniturezoid/data_source/local_data_source/furniture_data_source.dart';

import '../model/furniture.dart';

abstract class FurnitureRepositiory {
  Future<List<Furniture>> getFurniture();
  Future<int> addFurniture(Furniture furniture);
}

class FurnitureRepositioryImpl extends FurnitureRepositiory {
  @override
  Future<int> addFurniture(Furniture furniture) {
    return FurnitureDataSource().addFurniture(furniture);
  }

  @override
  Future<List<Furniture>> getFurniture() {
    return FurnitureDataSource().getFurniture();
  }
}