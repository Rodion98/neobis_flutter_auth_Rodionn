// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:neobis_flutter_auth/core/app/app.dart';
// import 'package:neobis_flutter_auth/core/app/router/router.dart';
// import 'package:neobis_flutter_auth/core/network/entity/failure.dart';
// import 'package:neobis_flutter_auth/core/services/auth_service.dart';
// import 'package:neobis_flutter_auth/injection/injection.dart';

// Future<void> main() async {
//   runZonedGuarded(() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     await configureDependencies();
//     await getIt<AuthService>().recoverUser();
//     runApp(MyApp());
//   }, (error, stackTrace) {
//     if (error is Authorization) {
//       if (getIt<AppRouter>().current.name != AuthorizationRoute.name) {
//         getIt<AppRouter>().pushAndPopUntil(
//           const AuthorizationRoute(),
//           predicate: (_) => false,
//         );
//       }
//     }
//   });
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:neobis_flutter_auth/core/app/app.dart';
import 'package:neobis_flutter_auth/core/app/router/app_routes.dart';
import 'package:neobis_flutter_auth/core/network/entity/failure.dart';
import 'package:neobis_flutter_auth/core/services/auth_service.dart';
import 'package:neobis_flutter_auth/injection/injection.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(
        widgetsBinding: widgetsBinding,
      );
      await configureDependencies();
      await getIt<AuthService>().recoverUser();
      runApp(
        const MyApp(),
      );
      FlutterNativeSplash.remove();
    },
    (error, stackTrace) {
      if (error is Authorization) {
        if (getIt<AppRouter>().current.name != AuthorizationRoute.name) {
          getIt<AppRouter>().push(
            const AuthorizationRoute(),
          );
        }
      }
    },
  );
}
