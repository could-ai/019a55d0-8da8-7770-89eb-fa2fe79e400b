import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/loan_model.dart';

class ManageLoansScreen extends StatefulWidget {
  const ManageLoansScreen({super.key});

  @override
  State<ManageLoansScreen> createState() => _ManageLoansScreenState();
}

class _ManageLoansScreenState extends State<ManageLoansScreen> {
  final List<Loan> _loans = [
    Loan(id: '1', title: 'Personal Loan', description: 'A personal loan for your everyday needs.', interestRate: 5.5, maxAmount: 50000, tenure: 24),
    Loan(id: '2', title: 'Home Loan', description: 'Get the keys to your dream home.', interestRate: 8.2, maxAmount: 500000, tenure: 120),
    Loan(id: '3', title: 'Car Loan', description: 'Drive away in your new car.', interestRate: 7.0, maxAmount: 100000, tenure: 60),
    Loan(id: '4', title: 'Education Loan', description: 'Invest in your future with an education loan.', interestRate: 6.5, maxAmount: 200000, tenure: 84),
  ];

  void _addLoan() {
    // TODO: Implement add loan functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add loan feature coming soon!')),
    );
  }

  void _editLoan(Loan loan) {
    // TODO: Implement edit loan functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Editing ${loan.title}. Feature coming soon!')),
    );
  }

  void _deleteLoan(String id) {
    setState(() {
      _loans.removeWhere((loan) => loan.id == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Loan deleted.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Loans'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addLoan,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _loans.length,
        itemBuilder: (context, index) {
          final loan = _loans[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(loan.title),
              subtitle: Text('Interest Rate: ${loan.interestRate}%'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _editLoan(loan),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteLoan(loan.id),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
