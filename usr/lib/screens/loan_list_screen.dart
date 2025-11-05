import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/loan_model.dart';
import 'package:couldai_user_app/screens/loan_detail_screen.dart';

class LoanListScreen extends StatelessWidget {
  const LoanListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Loan> loans = [
      Loan(
        id: '1',
        title: 'Personal Loan',
        description: 'A personal loan for your everyday needs.',
        interestRate: 5.5,
        maxAmount: 50000,
        tenure: 24,
      ),
      Loan(
        id: '2',
        title: 'Home Loan',
        description: 'Get the keys to your dream home.',
        interestRate: 8.2,
        maxAmount: 500000,
        tenure: 120,
      ),
      Loan(
        id: '3',
        title: 'Car Loan',
        description: 'Drive away in your new car.',
        interestRate: 7.0,
        maxAmount: 100000,
        tenure: 60,
      ),
      Loan(
        id: '4',
        title: 'Education Loan',
        description: 'Invest in your future with an education loan.',
        interestRate: 6.5,
        maxAmount: 200000,
        tenure: 84,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Loans'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        itemCount: loans.length,
        itemBuilder: (context, index) {
          final loan = loans[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(loan.title),
              subtitle: Text(loan.description),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoanDetailScreen(loan: loan),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
