// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodLocalAdapter extends TypeAdapter<FoodLocal> {
  @override
  final int typeId = 0;

  @override
  FoodLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FoodLocal(
      id: fields[0] as String?,
      label: fields[1] as String?,
      image: fields[2] as String?,
      category: fields[3] as String?,
      categoryLabel: fields[4] as String?,
      nutrients: fields[6] as NutrientsLocal?,
      measures: fields[7] as MeasuresLocal?,
    );
  }

  @override
  void write(BinaryWriter writer, FoodLocal obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.categoryLabel)
      ..writeByte(6)
      ..write(obj.nutrients)
      ..writeByte(7)
      ..write(obj.measures);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
