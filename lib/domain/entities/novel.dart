class Novel {
  final String id;
  final String title;
  final String author;
  final String coverImage;
  final String description;
  final List<String> categories;
  final double rating;
  final int totalChapters;
  final int totalViews;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isCompleted;

  const Novel({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImage,
    required this.description,
    required this.categories,
    required this.rating,
    required this.totalChapters,
    required this.totalViews,
    required this.createdAt,
    required this.updatedAt,
    required this.isCompleted,
  });
}
