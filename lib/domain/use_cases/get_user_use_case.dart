import 'package:bloc_example/domain/entitiies/user_entity.dart';
import 'package:bloc_example/domain/repositories/user_repo.dart';

class GetUserUseCase {
  const GetUserUseCase(this._repo);
  final UserRepo _repo;
  Future<UserEntity?> 
  call(String email) async{
    return await _repo.getUser(email);
  }
}