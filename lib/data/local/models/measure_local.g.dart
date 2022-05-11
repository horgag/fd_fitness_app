// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasuresLocalAdapter extends TypeAdapter<MeasuresLocal> {
  @override
  final int typeId = 1;

  @override
  MeasuresLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasuresLocal(
      label: fields[1] as String,
      weight: fields[0] as double,
      servingSize: (fields[2] as List).cast<ServingSizeLocal>(),
    );
  }

  @override
  void write(BinaryWriter writer, MeasuresLocal obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.weight)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.servingSize);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasuresLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
