import 'package:pockety/app/app.locator.dart';
import 'package:pockety/models/spending.dart';
import 'package:pockety/services/database.dart';
import 'package:pockety/services/spendings_service/spendings_service_interface.dart';

class SpendingsService implements SpendingsServiceInterface {
  final AppDatabase _database = locator.get<AppDatabase>();

  @override
  Future<List<Spending>> getAllSpendings() async {
    var allItems = await _database.select(_database.spendingTable).get();
    return allItems.map((e) => Spending(amount: e.amount, note: e.note)).toList();
  }

  @override
  Future<void> createSpending(Spending spending) async {
    await _database.into(_database.spendingTable).insert(SpendingTableCompanion.insert(
          amount: spending.amount,
          note: spending.note,
        ));
  }
}
