class ResponseModel {
  bool success;
  dynamic data;

  ResponseModel({
    required this.success,
    required this.data,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        success: json["success"],
        data: json["data"],
      );

  // Map<String, dynamic> toJson() => {
  //   "status": status,
  //   "data": data,
  // };
}
