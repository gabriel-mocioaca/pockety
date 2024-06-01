import 'package:pockety/models/spending.dart';

abstract interface class SpendingsServiceInterface {
  Future<List<Spending>> getAllSpendings();

  void createSpending(Spending spending) {}
}
