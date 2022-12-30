import 'package:furniturezoid/model/furniture.dart';
import 'package:objectbox/objectbox.dart';


@Entity()
class User {
  @Id(assignable: true)
  int uId;
  String fname;
  String lname;
  String username;
  // String phonenum;
  // String email;
  // String address;
  String password;

  final furniture = ToOne<Furniture>();

  User(this.fname, this.lname, this.username, this.password, {this.uId = 0});
}

