import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/network/entity/failure.dart';
import 'package:neobis_flutter_auth/core/network/entity/success.dart';
import 'package:neobis_flutter_auth/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_auth/core/services/auth_service.dart';
import 'package:neobis_flutter_auth/features/authorization/data/data_source/login_data_source.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/repository/repository.dart';

@Injectable(as: LoginRepo)
class LoginRepoImpl implements LoginRepo {
  final LoginDataSource _dataSource;
  final AuthService _authService;

  LoginRepoImpl(
    this._dataSource,
    this._authService,
  );

  @override
  Future<Either<Failure, Success>> login(
    LoginModel loginModel,
  ) async {
    try {
      final result = await _dataSource.login(
        loginModel: loginModel,
      );
      _authService.cachedUser = result;
      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    try {
      await _authService.signOut();
      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
