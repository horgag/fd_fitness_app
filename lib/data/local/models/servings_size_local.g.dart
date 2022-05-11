// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servings_size_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServingSizeLocalAdapter extends TypeAdapter<ServingSizeLocal> {
  @override
  final int typeId = 3;

  @override
  ServingSizeLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServingSizeLocal(
      label: fields[1] as String?,
      weight: fields[0] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ServingSizeLocal obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.weight)
      ..writeByte(1)
      ..write(obj.label);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServingSizeLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
