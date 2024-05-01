import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/appStay.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/AllExpenses.dart';
import 'package:responsive_dashboard/widgets/Drawer/CoustomDrawer.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/QuickInvoice.dart';

class DashboardDesktopLayoutView extends StatelessWidget {
  const DashboardDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(width: 32),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpenses(),
                  SizedBox(height: 24),
                  QuickInvoice(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
