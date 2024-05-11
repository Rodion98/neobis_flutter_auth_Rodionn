import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/app.dart';
import 'package:neobis_flutter_auth/core/app/dependencies/di.dart';
import 'package:neobis_flutter_auth/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setupDependencies();
  await configureDependencies();
  runApp(MyApp());
}
