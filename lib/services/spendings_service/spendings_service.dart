import 'package:hive/hive.dart';
import 'package:pockety/models/spending.dart';
import 'package:pockety/services/spendings_service/spendings_service_interface.dart';

class SpendingsService implements SpendingsServiceInterface {
  @override
  Future<List<Spending>> getAllSpendings() async {
    Box box = Hive.box<List<Spending>>('spendings');
    List<Spending> spendings = box.get('spendings') ?? [];
    return spendings;
  }
}
