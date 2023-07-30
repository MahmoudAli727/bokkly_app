// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class bookentityAdapter extends TypeAdapter<book_entity> {
  @override
  final int typeId = 0;

  @override
  book_entity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return book_entity(
      bookId: fields[0] as String,
      title: fields[1] as String,
      authorname: fields[2] as String?,
      image: fields[3] as String?,
      price: fields[4] as num?,
      rating: fields[5] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, book_entity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authorname)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is bookentityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
