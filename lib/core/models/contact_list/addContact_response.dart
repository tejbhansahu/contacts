import 'package:azlistview/azlistview.dart';

class AddContactResponse extends ISuspensionBean{
  String? id;
  String? profileSlug;
  String? firstName;
  String? lastName;
  String? company;
  String? contact;
  String? contactType;
  String? email;
  String? emailType;
  String? date;
  String? dateType;
  bool? isFavourite;
  late final String tag;

  AddContactResponse(
      {this.id,
        this.profileSlug,
        this.firstName,
        this.lastName,
        this.company,
        this.contact,
        this.contactType,
        this.email,
        this.emailType,
        this.date,
        this.dateType,
        required this.tag,
        this.isFavourite});

  AddContactResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profileSlug = json['profile_slug'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    contact = json['contact'];
    contactType = json['contact_type'];
    email = json['email'];
    emailType = json['email_type'];
    date = json['date'];
    dateType = json['date_type'];
    isFavourite = json['isFavourite'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['profile_slug'] = profileSlug;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['company'] = company;
    data['contact'] = contact;
    data['contact_type'] = contactType;
    data['email'] = email;
    data['email_type'] = emailType;
    data['date'] = date;
    data['date_type'] = dateType;
    data['isFavourite'] = isFavourite;
    data['tag'] = tag;
    return data;
  }

  @override
  String getSuspensionTag() => tag;
}
