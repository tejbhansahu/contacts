// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addContact_response_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactsListHiveAdapter extends TypeAdapter<ContactsListHive> {
  @override
  final int typeId = 1;

  @override
  ContactsListHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactsListHive(
      profile_slug: fields[1] as String?,
      first_name: fields[2] as String?,
      last_name: fields[3] as String?,
      contact: fields[5] as String?,
      contact_type: fields[6] as String?,
      email: fields[7] as String?,
      email_type: fields[8] as String?,
      date: fields[9] as String?,
      date_type: fields[10] as String?,
      isFavourite: fields[11] as bool?,
      company: fields[4] as String?,
      tag: fields[12] as String?,
      id: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ContactsListHive obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.profile_slug)
      ..writeByte(2)
      ..write(obj.first_name)
      ..writeByte(3)
      ..write(obj.last_name)
      ..writeByte(4)
      ..write(obj.company)
      ..writeByte(5)
      ..write(obj.contact)
      ..writeByte(6)
      ..write(obj.contact_type)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.email_type)
      ..writeByte(9)
      ..write(obj.date)
      ..writeByte(10)
      ..write(obj.date_type)
      ..writeByte(11)
      ..write(obj.isFavourite)
      ..writeByte(12)
      ..write(obj.tag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactsListHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
