// flutter pub run build_runner build  --delete-conflicting-outputs


import 'package:objectbox/objectbox.dart';

import 'user.dart';

@Entity()
class Furniture {
  @Id(assignable: true)
  int furnitureId;
  String furnitureName;
  
  @Backlink()
  final user = ToMany<User>();

  Furniture(this.furnitureName, {this.furnitureId = 0});
}
// flutter pub run build_runner build --delete-conflic
// ting-outputs