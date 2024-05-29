import 'package:pockety/app/app.locator.dart';
import 'package:pockety/models/spending.dart';
import 'package:pockety/services/spendings_service/spendings_service.dart';
import 'package:stacked/stacked.dart';

class SpendingsListModel extends FutureViewModel<List<Spending>> {
  @override
  Future<List<Spending>> futureToRun() => locator<SpendingsService>().getAllSpendings();
}
