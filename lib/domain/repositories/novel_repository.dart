import 'package:dartz/dartz.dart';
import '../entities/novel.dart';
import '../../core/error/failures.dart';

abstract class NovelRepository {
  Future<Either<Failure, List<Novel>>> getNovels({
    int page = 1,
    int limit = 20,
    String? category,
    String? searchQuery,
  });

  Future<Either<Failure, Novel>> getNovelById(String id);

  Future<Either<Failure, List<Novel>>> getRecommendedNovels();

  Future<Either<Failure, List<Novel>>> getPopularNovels();

  Future<Either<Failure, List<Novel>>> getLatestNovels();
}
