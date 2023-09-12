class ErrorModel {
  String type;
  int code;
  String msg;
  String details;

  ErrorModel({
    required this.type,
    required this.code,
    required this.msg,
    required this.details,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        type: json["type"],
        code: json["code"],
        msg: json["msg"],
        details: json["details"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "code": code,
        "msg": msg,
        "details": details,
      };
}
