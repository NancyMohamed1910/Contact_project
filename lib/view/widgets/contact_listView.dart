import 'package:contact_project/view/Contact_editPage.dart';
import 'package:contact_project/view/home_page.dart';
import 'package:contact_project/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_project/model/model.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactViewModel>(builder: (context, viewModel, child) {
      return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: viewModel.getLength(),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: Text(viewModel.getFirst2Char(index),
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  title: Text(viewModel.getFullName(index) as String),
                  subtitle: Text(viewModel.getPhoneNumber(index)),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                ContactData data =
                                    (viewModel.getContactData(index));

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ContactEditPage(
                                              editData: data,
                                              index: index,
                                            )));
                              },
                              tooltip: 'edit contact information',
                            )),
                        Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                viewModel.deleteContact(index);
                                if (viewModel.getLength() == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                }
                              },
                              tooltip: 'delete contact information',
                            )),
                      ],
                    ),
                  ),
                ),
              );
            },
          ));
    });
  }
}
