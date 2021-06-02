/// 新闻分类 response
class CategoryResponseEntity {
  String code;
  String title;

  CategoryResponseEntity({
    required this.code,
    required this.title,
  });

  factory CategoryResponseEntity.fromJson(Map<String, dynamic> json) =>
      CategoryResponseEntity(
        code: json["code"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
      };
}
