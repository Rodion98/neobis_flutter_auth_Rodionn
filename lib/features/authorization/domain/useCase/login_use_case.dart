import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/use_case/use_case.dart';
import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_auth/features/authorization/domain/repository/repository.dart';

@singleton
class LoginUseCase extends UseCase<void, LoginModel> {
  final LoginRepo repo;

  LoginUseCase({required this.repo});

  @override
  Future<void> call(LoginModel params) async {
    await repo.login(params);
  }
}
