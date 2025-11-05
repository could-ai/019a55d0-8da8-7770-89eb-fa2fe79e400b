import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: <Widget>[
          _buildDashboardCard(
            context,
            icon: Icons.account_balance_wallet,
            label: 'Manage Loans',
            onTap: () {
              Navigator.pushNamed(context, '/admin/manage_loans');
            },
          ),
          _buildDashboardCard(
            context,
            icon: Icons.file_copy,
            label: 'View Applications',
            onTap: () {
               Navigator.pushNamed(context, '/admin/view_applications');
            },
          ),
          _buildDashboardCard(
            context,
            icon: Icons.people,
            label: 'Manage Users',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Manage Users feature coming soon!')),
              );
            },
          ),
          _buildDashboardCard(
            context,
            icon: Icons.settings,
            label: 'Settings',
            onTap: () {
               ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings feature coming soon!')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16.0),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
