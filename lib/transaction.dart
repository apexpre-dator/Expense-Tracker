class Transaction {
  final String id, title;
  final int amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.date,
    required this.title,
    required this.amount,
  });
}
