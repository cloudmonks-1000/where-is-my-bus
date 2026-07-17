import 'package:flutter/material.dart';

import 'core/route_names.dart';
import 'core/theme.dart';
import 'routes/app_routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  runApp(const WhereIsMyBus());
}

class WhereIsMyBus extends StatelessWidget {
  const WhereIsMyBus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Where Is My Bus",
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      initialRoute: RouteNames.splash,

      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}