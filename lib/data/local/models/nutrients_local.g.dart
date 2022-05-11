// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutrientsLocalAdapter extends TypeAdapter<NutrientsLocal> {
  @override
  final int typeId = 2;

  @override
  NutrientsLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutrientsLocal(
      kcal: fields[0] as double,
      carbs: fields[1] as double,
      protein: fields[2] as double,
      fat: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, NutrientsLocal obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.kcal)
      ..writeByte(1)
      ..write(obj.carbs)
      ..writeByte(2)
      ..write(obj.protein)
      ..writeByte(3)
      ..write(obj.fat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutrientsLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
