import 'dart:convert';

List<ContactModel> contactModelFromJson(String str, String query) =>
    List<ContactModel>.from(
        json.decode(str).map((x) => ContactModel.fromJson(x))).where((element) {
      final name = element.name!.toLowerCase();
      final searchLower = query.toLowerCase();
      return name.contains(searchLower);
    }).toList();

String contactModelToJson(List<ContactModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactModel {
  ContactModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.notes,
    this.created,
    this.labels,
  });

  int? id;
  String? name;
  String? email;
  String? phone;
  String? notes;
  DateTime? created;
  List<Label>? labels;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        notes: json["notes"],
        created: DateTime.parse(json["created"]),
        labels: List<Label>.from(json["labels"].map((x) => Label.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "notes": notes,
        "created": created!.toIso8601String(),
        "labels": List<dynamic>.from(labels!.map((x) => x.toJson())),
      };
}

class Label {
  Label({
    required this.slug,
    required this.title,
  });

  String slug;
  String title;

  factory Label.fromJson(Map<String, dynamic> json) => Label(
        slug: json["slug"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "title": title,
      };
}
