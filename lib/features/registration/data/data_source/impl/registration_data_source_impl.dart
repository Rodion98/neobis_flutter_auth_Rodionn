import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/core/network/http_client.dart';
import 'package:neobis_flutter_auth/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  final HttpClient _client;

  RegistrationDataSourceImpl(
    this._client,
  );

  @override
  Future<void> registration({
    RegistrationModel? registrationModel,
  }) async {
    _client.post(
      Constants.registration,
      data: registrationModel!.toJson(),
    );
  }

  // Future<void> registrationn(RegistrationModel? model) async {
  //   // final json = {
  //   //   "username": 'sdfdsfsdf',
  //   //   "email": 'sdf@mai.com',
  //   //   "password": "1452GHjf@",
  //   //   "password_confirm": "1452GHjf@"
  //   // };
  //   try {
  //     final response = await dio.post(
  //       '${Constants.baseUrl}${Constants.registration}',
  //       data: model!.toJson(),
  //     );

  //     if (response.statusCode == 201) {
  //       print('Registration successful');
  //     } else if (response.statusCode == 400) {
  //       throw Exception(
  //         'Bad request: ${response.data}',
  //       );
  //     } else {
  //       throw Exception(
  //         'Unexpected status code: ${response.statusCode}',
  //       );
  //     }
  //   } catch (e) {
  //     throw Exception(
  //       'Failed to register: $e',
  //     );
  //   }
  // }
}
