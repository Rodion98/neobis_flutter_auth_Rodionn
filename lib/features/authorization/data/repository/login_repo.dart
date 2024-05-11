import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/features/authorization/data/data_source/impl/login_data_source_impl.dart';
import 'package:neobis_flutter_auth/features/authorization/data/data_source/login_data_source.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/repository/repository.dart';

@Injectable(as: LoginRepo)
class LoginRepoImpl implements LoginRepo {
  final LoginDataSource _dataSource;

  LoginRepoImpl(
    this._dataSource,
  );

  @override
  Future<void> login(LoginModel loginModel) async {
    await _dataSource.login(loginModel: loginModel);
  }
}
