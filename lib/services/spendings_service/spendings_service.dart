import 'package:hive/hive.dart';
import 'package:pockety/models/spending.dart';
import 'package:pockety/services/spendings_service/spendings_service_interface.dart';

class SpendingsService implements SpendingsServiceInterface {
  final String _spendingsBoxKey = 'spendings';

  @override
  Future<List<Spending>> getAllSpendings() async {
    Box box = await Hive.openBox(_spendingsBoxKey);
    List<Spending> spendings = box.get(_spendingsBoxKey) ?? [];
    return spendings;
  }
}
