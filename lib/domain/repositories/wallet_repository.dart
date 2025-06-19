import 'package:dartz/dartz.dart';
import '../entities/user_wallet.dart';
import '../../core/error/failures.dart';

abstract class WalletRepository {
  Future<Either<Failure, UserWallet>> getWallet();

  Future<Either<Failure, UserWallet>> deposit(int amount);

  Future<Either<Failure, Transaction>> getTransactionById(String id);

  Future<Either<Failure, List<Transaction>>> getTransactions({
    int page = 1,
    int limit = 20,
  });

  Future<Either<Failure, int>> getBalance();
}
