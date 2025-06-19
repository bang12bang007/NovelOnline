enum ChapterStatus { free, vip, locked }

class Chapter {
  final String id;
  final String novelId;
  final String title;
  final int chapterNumber;
  final String content;
  final ChapterStatus status;
  final int price; // Price in coins
  final DateTime createdAt;
  final DateTime updatedAt;
  final int views;

  const Chapter({
    required this.id,
    required this.novelId,
    required this.title,
    required this.chapterNumber,
    required this.content,
    required this.status,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.views,
  });
}
