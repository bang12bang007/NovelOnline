import 'package:dartz/dartz.dart';
import '../../entities/user_wallet.dart';
import '../../repositories/wallet_repository.dart';
import '../../../core/error/failures.dart';

class DepositMoney {
  final WalletRepository repository;

  DepositMoney(this.repository);

  Future<Either<Failure, UserWallet>> call(int amount) async {
    if (amount <= 0) {
      return Left(ServerFailure('Invalid amount'));
    }

    return await repository.deposit(amount);
  }
}
