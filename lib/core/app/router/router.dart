import 'package:auto_route/auto_route.dart';
import 'package:neobis_flutter_auth/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_auth/features/confirmation/presentation/confirmation_screen.dart';
import 'package:neobis_flutter_auth/features/main/presentation/main_screen.dart';
import 'package:neobis_flutter_auth/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_auth/features/registration/presentation/registration_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthorizationRoute.page,
          path: '/',
          initial: true,
          children: const [],
        ),
        AutoRoute(
          page: MainRoute.page,
          path: '/main',
        ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: '/confirmation',
        ),
      ];
}
