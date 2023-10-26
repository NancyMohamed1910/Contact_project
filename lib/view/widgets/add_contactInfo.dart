
import 'package:contact_project/view/contact_entriesPage.dart';
import 'package:flutter/material.dart';

class AddContactInfo extends StatelessWidget {
  const AddContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ContactEntryPage()));
      },
      child: const Icon(Icons.add),
    );
  }
}

