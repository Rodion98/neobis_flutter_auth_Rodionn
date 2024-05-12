import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/network/entity/auth_info.dart';
import 'package:neobis_flutter_auth/core/network/http_client.dart';
import 'package:neobis_flutter_auth/features/authorization/data/data_source/login_data_source.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';

@Injectable(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final HttpClient _client;

  LoginDataSourceImpl(
    this._client,
  );

  @override
  Future<AuthData> login({
    LoginModel? loginModel,
  }) async {
    final result = await _client.post(
      Constants.login,
      data: loginModel!.toJson(),
    );
    return AuthData.fromJson(
      result.data,
    );
  }
}
