import 'package:dartz/dartz.dart';
import '../entities/chapter.dart';
import '../../core/error/failures.dart';

abstract class ChapterRepository {
  Future<Either<Failure, List<Chapter>>> getChaptersByNovelId(
    String novelId, {
    int page = 1,
    int limit = 20,
  });

  Future<Either<Failure, Chapter>> getChapterById(String id);

  Future<Either<Failure, Chapter>> purchaseChapter(String chapterId);

  Future<Either<Failure, bool>> isChapterPurchased(String chapterId);

  Future<Either<Failure, List<Chapter>>> getPurchasedChapters(String novelId);
}
