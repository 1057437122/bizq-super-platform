class VerificationModel {
  String type;
  String id;
  String areaCode;
  String phone;
  String code;
  String status;
  String expiredTime;
  String createdAt;
  String updatedAt;

  VerificationModel({
    required this.type,
    required this.id,
    required this.areaCode,
    required this.phone,
    required this.code,
    required this.status,
    required this.expiredTime,
    required this.createdAt,
    required this.updatedAt,
  });

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      VerificationModel(
        type: json["type"],
        id: json["_id"],
        areaCode: json["areaCode"],
        phone: json["phone"],
        code: json["code"],
        status: json["status"],
        expiredTime: json["expiredTime"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "_id": id,
        "areaCode": areaCode,
        "phone": phone,
        "code": code,
        "status": status,
        "expiredTime": expiredTime,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
