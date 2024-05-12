import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/use_case/use_case.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/domain/repository/repository.dart';

@singleton
class RegistrationUseCase extends UseCase<void, RegistrationModel> {
  final RegistrationRepo repo;

  RegistrationUseCase({
    required this.repo,
  });

  @override
  Future<void> call(
    RegistrationModel? params,
  ) async {
    await repo.registration(params);
  }
}
