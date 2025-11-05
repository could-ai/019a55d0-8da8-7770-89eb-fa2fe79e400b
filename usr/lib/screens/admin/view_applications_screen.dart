import 'package:flutter/material.dart';

// Mock data for loan applications
class LoanApplication {
  final String id;
  final String applicantName;
  final String loanType;
  final double amount;
  final String status;

  LoanApplication({
    required this.id,
    required this.applicantName,
    required this.loanType,
    required this.amount,
    required this.status,
  });
}


class ViewApplicationsScreen extends StatelessWidget {
  const ViewApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<LoanApplication> applications = [
      LoanApplication(id: 'app1', applicantName: 'John Doe', loanType: 'Personal Loan', amount: 10000, status: 'Pending'),
      LoanApplication(id: 'app2', applicantName: 'Jane Smith', loanType: 'Home Loan', amount: 250000, status: 'Approved'),
      LoanApplication(id: 'app3', applicantName: 'Peter Jones', loanType: 'Car Loan', amount: 20000, status: 'Rejected'),
      LoanApplication(id: 'app4', applicantName: 'Mary Williams', loanType: 'Education Loan', amount: 50000, status: 'Pending'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Applications'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        itemCount: applications.length,
        itemBuilder: (context, index) {
          final application = applications[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('${application.applicantName} - ${application.loanType}'),
              subtitle: Text('Amount: \$${application.amount.toStringAsFixed(2)}'),
              trailing: Text(
                application.status,
                style: TextStyle(
                  color: application.status == 'Approved' ? Colors.green : (application.status == 'Rejected' ? Colors.red : Colors.orange),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // TODO: Implement application detail view
                 ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Viewing details for ${application.applicantName}. Feature coming soon!')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
