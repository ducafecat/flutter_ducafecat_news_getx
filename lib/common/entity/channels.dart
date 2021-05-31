/// 频道列表 response
class ChannelResponseEntity {
  String code;
  String title;

  ChannelResponseEntity({
    required this.code,
    required this.title,
  });

  factory ChannelResponseEntity.fromJson(Map<String, dynamic> json) =>
      ChannelResponseEntity(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}
