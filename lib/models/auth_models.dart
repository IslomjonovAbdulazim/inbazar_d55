class UserModel {
  late String fullname;
  late String telegramId;
  late String id;
  late String phoneNumber;
  late DateTime createdAt;

  UserModel({
    required this.fullname,
    required this.telegramId,
    required this.id,
    required this.phoneNumber,
    required this.createdAt,
  });

  UserModel.fromJson(Map json) {
    fullname = json["full_name"];
    telegramId = json["telegram_id"];
    id = json["id"];
    phoneNumber = json["phone_number"];
    createdAt = DateTime.parse(json["created_at"]);
  }

  Map toJson() => {
    "full_name": fullname,
    "telegram_id": telegramId,
    "id": id,
    "phone_number": phoneNumber,
    "created_at": createdAt.toIso8601String(),
  };
}
