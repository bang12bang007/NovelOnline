class UserWallet {
  final String userId;
  final int balance; // Balance in coins
  final List<Transaction> transactions;

  const UserWallet({
    required this.userId,
    required this.balance,
    required this.transactions,
  });
}

class Transaction {
  final String id;
  final String userId;
  final int amount;
  final TransactionType type;
  final String description;
  final DateTime createdAt;

  const Transaction({
    required this.id,
    required this.userId,
    required this.amount,
    required this.type,
    required this.description,
    required this.createdAt,
  });
}

enum TransactionType {
  deposit, // Nạp tiền
  purchase, // Mua chương
  refund, // Hoàn tiền
  reward // Thưởng
}
