import 'package:dartz/dartz.dart';
import '../../entities/novel.dart';
import '../../repositories/novel_repository.dart';
import '../../../core/error/failures.dart';

class GetNovels {
  final NovelRepository repository;

  GetNovels(this.repository);

  Future<Either<Failure, List<Novel>>> call({
    int page = 1,
    int limit = 20,
    String? category,
    String? searchQuery,
  }) async {
    return await repository.getNovels(
      page: page,
      limit: limit,
      category: category,
      searchQuery: searchQuery,
    );
  }
}
