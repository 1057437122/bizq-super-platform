enum TipsType {
  error,
  success,
  warning,
}

class TipsModel {
  TipsType type;
  String msg;

  TipsModel({
    required this.type,
    required this.msg,
  });

  factory TipsModel.fromJson(Map<String, dynamic> json) => TipsModel(
        type: json["type"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "msg": msg,
      };
}
