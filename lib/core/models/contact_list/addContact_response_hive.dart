import 'package:hive/hive.dart';
import 'addContact_response.dart';

part 'addContact_response_hive.g.dart';

/// A Hive Database compatible Rocket List Model
///   - @HiveType(typeId: unique) is necessary for each HiveObject
///   - @HiveField(unique) is necessary if you need the object to persist
@HiveType(typeId: 1)
class ContactsListHive extends HiveObject {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String? profile_slug;

  @HiveField(2)
  String? first_name;

  @HiveField(3)
  String? last_name;

  @HiveField(4)
  String? company;

  @HiveField(5)
  String? contact;

  @HiveField(6)
  String? contact_type;

  @HiveField(7)
  String? email;

  @HiveField(8)
  String? email_type;

  @HiveField(9)
  String? date;

  @HiveField(10)
  String? date_type;

  @HiveField(11)
  bool? isFavourite;

  @HiveField(12)
  String? tag;

  ContactsListHive(
      {this.profile_slug,
      this.first_name,
      this.last_name,
      this.contact,
      this.contact_type,
      this.email,
      this.email_type,
      this.date,
      this.date_type,
      this.isFavourite,
      this.company,
      this.tag,
      this.id});

  factory ContactsListHive.fromModel(AddContactResponse contact) {
    return ContactsListHive(
        id: contact.id.toString(),
        company: contact.company,
        contact: contact.contact,
        contact_type: contact.contactType,
        date: contact.date,
        date_type: contact.dateType,
        email: contact.email,
        email_type: contact.emailType,
        first_name: contact.firstName,
        isFavourite: contact.isFavourite,
        last_name: contact.lastName,
        tag: contact.tag,
        profile_slug: contact.profileSlug);
  }

  factory ContactsListHive.fromMap(Map<String, dynamic> map) {
    return ContactsListHive(
        id: map['id'],
        profile_slug: map['profile_slug'],
        last_name: map['last_name'],
        isFavourite: map['isFavourite'],
        first_name: map['first_name'],
        email_type: map['email_type'],
        email: map['email'],
        date_type: map['date_type'],
        date: map['date'],
        contact_type: map['contact_type'],
        contact: map['contact'],
        tag: map['tag'],
        company: map['company']);
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profile_slug'] = profile_slug;
    map['last_name'] = last_name;
    map['isFavourite'] = isFavourite;
    map['first_name'] = first_name;
    map['email_type'] = email_type;
    map['email'] = email;
    map['date_type'] = date_type;
    map['date'] = date;
    map['id'] = id;
    map['contact_type'] = contact_type;
    map['contact'] = contact;
    map['tag'] = tag;
    map['company'] = company;
    return map;
  }

  @override
  int get hashCode =>
      profile_slug.hashCode ^
      last_name.hashCode ^
      isFavourite.hashCode ^
      first_name.hashCode ^
      email_type.hashCode ^
      email.hashCode ^
      date_type.hashCode ^
      date.hashCode ^
      contact_type.hashCode ^
      contact.hashCode ^
      company.hashCode ^
      tag.hashCode ^
      id.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactsListHive &&
          profile_slug == other.profile_slug &&
          last_name == other.last_name &&
          isFavourite == other.isFavourite &&
          first_name == other.first_name &&
          email_type == other.email_type &&
          email == other.email &&
          date_type == other.date_type &&
          date == other.date &&
          contact_type == other.contact_type &&
          contact == other.contact &&
          company == other.company &&
          tag == other.tag &&
          id == other.id;
}
