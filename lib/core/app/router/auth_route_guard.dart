import 'package:auto_route/auto_route.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/core/services/auth_service.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthService authService;

  AuthGuard({required this.authService});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.cachedUser?.tokenAccess != null) {
      resolver.next(true);
    } else {
      router.push(const AuthorizationRoute());
    }
  }
}
