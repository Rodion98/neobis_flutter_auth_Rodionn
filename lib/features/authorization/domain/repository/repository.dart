import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_auth/core/network/entity/failure.dart';
import 'package:neobis_flutter_auth/core/network/entity/success.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';

abstract class LoginRepo {
  Future<Either<Failure, Success>> login(
    LoginModel loginModel,
  );

  Future<Either<Failure, Success>> signOut();
}
