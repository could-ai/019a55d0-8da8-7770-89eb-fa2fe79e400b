class Loan {
  final String id;
  final String title;
  final String description;
  final double interestRate;
  final double maxAmount;
  final int tenure; // in months

  Loan({
    required this.id,
    required this.title,
    required this.description,
    required this.interestRate,
    required this.maxAmount,
    required this.tenure,
  });
}
