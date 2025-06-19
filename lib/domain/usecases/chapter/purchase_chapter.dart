import 'package:dartz/dartz.dart';
import '../../entities/chapter.dart';
import '../../repositories/chapter_repository.dart';
import '../../repositories/wallet_repository.dart';
import '../../../core/error/failures.dart';

class PurchaseChapter {
  final ChapterRepository chapterRepository;
  final WalletRepository walletRepository;

  PurchaseChapter({
    required this.chapterRepository,
    required this.walletRepository,
  });

  Future<Either<Failure, Chapter>> call(String chapterId) async {
    // Kiểm tra số dư trước khi mua
    final balanceResult = await walletRepository.getBalance();

    return balanceResult.fold(
      (failure) => Left(failure),
      (balance) async {
        // Lấy thông tin chương để kiểm tra giá
        final chapterResult = await chapterRepository.getChapterById(chapterId);

        return chapterResult.fold(
          (failure) => Left(failure),
          (chapter) async {
            if (balance < chapter.price) {
              return Left(ServerFailure('Insufficient balance'));
            }

            // Thực hiện mua chương
            return await chapterRepository.purchaseChapter(chapterId);
          },
        );
      },
    );
  }
}
