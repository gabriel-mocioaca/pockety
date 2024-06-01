import 'package:pockety/services/database.dart';
import 'package:pockety/services/spendings_service/spendings_service_interface.dart';
import 'package:pockety/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:pockety/ui/views/my_spendings/my_spendings_view.dart';
import 'package:pockety/services/spendings_service/spendings_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: MySpendingsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SpendingsService, asType: SpendingsServiceInterface),
    Singleton(classType: AppDatabase),

// @stacked-service
  ],
)
class App {}
