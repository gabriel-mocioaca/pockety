import 'package:hive/hive.dart';
part 'spending.g.dart';

@HiveType(typeId: 1)
class Spending {
  Spending({
    required this.amount,
    required this.note,
  });

  @HiveField(0)
  double amount;

  @HiveField(1)
  String note;
}
