import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_auth/core/app/router/auth_route_guard.dart';
import 'package:neobis_flutter_auth/core/services/auth_service.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_auth/features/confirmation/presentation/confirmation_screen.dart';
import 'package:neobis_flutter_auth/features/main/presentation/main_screen.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/registration_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthorizationRoute.page,
          path: '/authorization',
        ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: '/confirmation',
        ),
        AutoRoute(
          page: MainRoute.page,
          path: '/',
          initial: true,
          guards: [
            AuthGuard(authService: authService),
          ],
        ),
      ];
}
