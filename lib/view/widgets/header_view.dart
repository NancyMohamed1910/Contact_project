import 'package:contact_project/view/home_page.dart';
import 'package:contact_project/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactViewModel>(builder: (context, viewModel, child) {
      return Container(
        color: Colors.lightBlueAccent,
        height: 20,
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const Expanded(
                    flex: 5,
                    child: Text(
                      'Contacts',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      viewModel.deleteAllcontact();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                ),
              ],
            )),
      );
    });
  }
}
