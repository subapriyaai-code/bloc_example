import 'package:bloc_example/domain/entitiies/user_entity.dart';
import 'package:bloc_example/domain/repositories/user_repo.dart';

class UserRepoImpl implements UserRepo {
  const UserRepoImpl();
  Future<UserEntity?> getUser(String email) async{
    await Future.delayed(Duration(seconds: 2));
    // return UserEntiti();
    // throw UnimplementedError();
    return null;
  }
}