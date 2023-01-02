// import 'package:furniturezoid/model/furniture.dart';
import 'package:objectbox/objectbox.dart';

// flutter pub run build_runner build  --delete-conflicting-outputs

@Entity()
class User {
  @Id(assignable: true)
  int uId;
  String fname;
  String lname;
  String username;
  String gender;
  // String phonenum;
  // String email;
  // String address;
  String password;

  // final furniture = ToOne<Furniture>();

  User(this.fname, this.lname,this.gender, this.username, this.password, {this.uId = 0});
}

