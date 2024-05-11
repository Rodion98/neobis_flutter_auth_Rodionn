import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
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
  Future<void> login({
    LoginModel? loginModel,
  }) async {
    _client.post(
      Constants.login,
      data: loginModel!.toJson(),
    );

    // try {
    //   final response = await dio.post(
    //     '${Constants.baseUrl}${Constants.login}',
    //     data: model!.toJson(),
    //   );

    //   if (response.statusCode == 200) {
    //     final json = response.data;
    //     final tokensModel = TokensModel.fromJson(json);
    //   } else if (response.statusCode == 400) {
    //     throw Exception('Bad request: ${response.data}');
    //   } else {
    //     throw Exception(
    //       'Unexpected status code: ${response.statusCode}',
    //     );
    //   }
    // } catch (e) {
    //   throw Exception('Failed to register: $e');
    // }
  }

  // Future<void> login(
  //   LoginModel model,
  // ) async {
  //   try {
  //     final response = await dio.post(
  //       '${Constants.baseUrl}${Constants.login}',
  //       data: model!.toJson(),
  //     );

  //     if (response.statusCode == 200) {
  //       final json = response.data;
  //       final tokensModel = TokensModel.fromJson(json);
  //     } else if (response.statusCode == 400) {
  //       throw Exception('Bad request: ${response.data}');
  //     } else {
  //       throw Exception(
  //         'Unexpected status code: ${response.statusCode}',
  //       );
  //     }
  //   } catch (e) {
  //     throw Exception('Failed to register: $e');
  //   }
  // }
}
// class AuthDataSourceImpl extends AuthDataSource {
//   final HttpClient _client;

//   AuthDataSourceImpl(this._client);

//   @override
//   Future<AuthData> authorization({
//     required String email,
//     required String password,
//   }) async {
//     final result = await _client.post(
//       HttpPaths.authorization,
//       data: {
//         "email": email,
//         "password": password,
//       },
//     );

//     return AuthData.fromJson(result.data);
//   }
// }