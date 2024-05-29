import 'package:pockety/services/spendings_service/spendings_service_interface.dart';
import 'package:pockety/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:pockety/ui/dialogs/info_alert/info_alert_dialog.dart';
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

// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
