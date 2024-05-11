import 'package:neobis_flutter_auth/features/authorization/data/models/login_model/login_model.dart';

abstract class LoginDataSource {
  Future<void> login({required LoginModel loginModel});
}
