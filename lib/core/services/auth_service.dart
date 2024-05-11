import 'package:neobis_flutter_auth/core/network/entity/auth_info.dart';
import 'package:neobis_flutter_auth/core/services/secure_storage_service.dart';
import 'package:neobis_flutter_auth/injection/injection.dart';

class AuthService {
  AuthData? _cachedUser;
  String? _cachedAppleID;

  AuthData? get cachedUser => _cachedUser;

  String? get cachedAppleID => _cachedAppleID;

  set cachedUser(AuthData? info) {
    _cachedUser = info;
    if (_cachedUser != null) {
      getIt<SecureStorageService>().setUser(_cachedUser!);
    }
  }

  Future<void> recoverUser() async {
    _cachedUser = await getIt<SecureStorageService>().getUser();
  }

  Future<void> signOut() async {
    // Clear secure storage
    await getIt<SecureStorageService>().wipeStorage();

    // Clear local cached user
    _cachedUser = null;
  }
}
