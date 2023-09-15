import 'package:dartz/dartz.dart';

abstract class LoginUseCase {
  Future<Either<String, User>> login(String username, String password);
}

class User {}
