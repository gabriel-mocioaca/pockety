// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpendingAdapter extends TypeAdapter<Spending> {
  @override
  final int typeId = 1;

  @override
  Spending read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Spending(
      amount: fields[0] as double,
      note: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Spending obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.note);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpendingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
