/// 新闻分页 response
class NewsPageListResponseEntity {
  int? counts;
  int? pagesize;
  int? pages;
  int? page;
  List<NewsItem>? items;

  NewsPageListResponseEntity({
    this.counts,
    this.pagesize,
    this.pages,
    this.page,
    this.items,
  });

  factory NewsPageListResponseEntity.fromJson(Map<String, dynamic> json) =>
      NewsPageListResponseEntity(
        counts: json["counts"],
        pagesize: json["pagesize"],
        pages: json["pages"],
        page: json["page"],
        items:
            List<NewsItem>.from(json["items"].map((x) => NewsItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "counts": counts,
        "pagesize": pagesize,
        "pages": pages,
        "page": page,
        "items": items != null
            ? List<dynamic>.from(items!.map((x) => x.toJson()))
            : [],
      };
}

class NewsItem {
  String id;
  String title;
  String category;
  String thumbnail;
  String author;
  DateTime addtime;
  String url;

  NewsItem({
    required this.id,
    required this.title,
    required this.category,
    required this.thumbnail,
    required this.author,
    required this.addtime,
    required this.url,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) => NewsItem(
        id: json["id"],
        title: json["title"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        author: json["author"],
        addtime: DateTime.parse(json["addtime"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "category": category,
        "thumbnail": thumbnail,
        "author": author,
        "addtime": addtime.toIso8601String(),
        "url": url,
      };
}

/// 新闻推荐 request
class NewsRecommendRequestEntity {
  String categoryCode;
  String channelCode;
  String tag;
  String keyword;

  NewsRecommendRequestEntity({
    required this.categoryCode,
    required this.channelCode,
    required this.tag,
    required this.keyword,
  });

  Map<String, dynamic> toJson() => {
        "categoryCode": categoryCode,
        "channelCode": channelCode,
        "tag": tag,
        "keyword": keyword,
      };
}
