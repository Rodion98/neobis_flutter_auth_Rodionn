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
}
