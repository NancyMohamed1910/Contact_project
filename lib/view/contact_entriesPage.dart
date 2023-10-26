import 'package:contact_project/view/widgets/contact_detailsView.dart';
import 'package:flutter/material.dart';

class ContactEntryPage extends StatelessWidget {
  const ContactEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 80,
                  child: Icon(
                    Icons.person_2_rounded,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(flex: 5, child: ContactDetails()),
            ],
          ),
        ),
      ),
    );
  }
}
