import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pockety/app/app.bottomsheets.dart';
import 'package:pockety/app/app.dialogs.dart';
import 'package:pockety/app/app.locator.dart';
import 'package:pockety/app/app.router.dart';
import 'package:pockety/models/spending.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String path = (await getApplicationDocumentsDirectory()).path;
  Hive
    ..init(path)
    ..registerAdapter(SpendingAdapter());

  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
