import 'package:flutter/material.dart';
import 'package:contact_project/view/widgets/header_view.dart';
import 'package:contact_project/view/widgets/contact_listView.dart';
import 'package:contact_project/view/widgets/add_contactInfo.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        //bottom: false,
        child: Column(
          children: [
            Expanded(flex: 1, child: HeaderView()),
            SizedBox(
              height: 10,
            ),
            //Expanded(flex: 1, child: TaskInfo()),
            Expanded(flex: 8, child:ContactListView() //EmptyList(),
                //child: ContactListView()
            ),
          ],
        ),
      ),
      floatingActionButton:AddContactInfo(),
    );
  }
}
