import 'package:contact_project/view/widgets/header_view2.dart';
import 'package:flutter/material.dart';
import 'package:contact_project/view/widgets/empty_litView.dart';
import 'package:contact_project/view/widgets/add_contactInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        //bottom: false,
        child: Column(
          children: [
            Expanded(flex: 1, child: HeaderView2()),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 8, child: EmptyList(),
              //child: ContactListView()
            ),
          ],
        ),
      ),
      floatingActionButton: AddContactInfo(),
    );
  }
}
