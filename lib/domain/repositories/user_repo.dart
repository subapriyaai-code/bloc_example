import 'package:bloc_example/domain/entitiies/user_entity.dart';

abstract class UserRepo {
  Future<UserEntity?>
   getUser(String email);
}