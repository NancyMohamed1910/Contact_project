import 'package:contact_project/model/model.dart';
import 'package:contact_project/view_model/view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:contact_project/view/home_page.dart';
import 'package:contact_project/view/contact_page.dart';
import 'package:contact_project/view/widgets/alert.dart';

class ContactEditPage extends StatelessWidget {
  ContactData editData;
  int index;
  ContactEditPage({super.key, required this.editData, required this.index});
  final TextEditingController nameController1 = TextEditingController();

  final TextEditingController nameController2 = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController mailController = TextEditingController();

  final TextEditingController webController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController1.text = editData.firstName;
    nameController2.text = editData.lastName;
    phoneController.text = editData.phoneNumber;
    mailController.text = editData.email;
    webController.text = editData.webSite;

    return Consumer<ContactViewModel>(builder: (context, viewModel, child) {
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
                Expanded(
                    flex: 5,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  hintText: 'First name',
                                  //errorText: 'please enter first name',
                                  alignLabelWithHint: true,
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w200),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                ),
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.words,
                                controller: nameController1,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                onFieldSubmitted: (value) {
                                  if (nameController1.text.isNotEmpty) {
                                    nameController1.clear();
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  hintText: 'Last name',
                                  alignLabelWithHint: true,
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w200),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                ),
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.words,
                                controller: nameController2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                onFieldSubmitted: (value) {
                                  if (nameController2.text.isNotEmpty) {
                                    nameController2.clear();
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.phone),
                                  hintText: 'Phone',
                                  alignLabelWithHint: true,
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w200),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                ),
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                controller: phoneController,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                onFieldSubmitted: (value) {
                                  if (phoneController.text.isNotEmpty) {
                                    phoneController.clear();
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  hintText: 'Email',
                                  alignLabelWithHint: true,
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w200),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                ),
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                controller: mailController,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                onFieldSubmitted: (value) {
                                  if (mailController.text.isNotEmpty) {
                                    mailController.clear();
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.web_rounded),
                                  hintText: 'WebSite',
                                  alignLabelWithHint: true,
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w200),
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                ),
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                controller: webController,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                onFieldSubmitted: (value) {
                                  if (webController.text.isNotEmpty) {
                                    webController.clear();
                                  }
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      icon: const Icon(Icons.cancel),
                                      iconSize: 50,
                                      onPressed: () {
                                        if (viewModel.getLength() == 0) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomePage()));
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ContactPage()));
                                        }
                                      },
                                      tooltip: 'Cancel',
                                      color: Colors.lightBlueAccent,
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      icon: const Icon(Icons.save),
                                      iconSize: 50,
                                      onPressed: () {
                                        if ((nameController1.text.isNotEmpty ||
                                                nameController2
                                                    .text.isNotEmpty) &&
                                            phoneController.text.isNotEmpty) {
                                          ContactData newData = ContactData(
                                              nameController1.text,
                                              nameController2.text,
                                              phoneController.text,
                                              mailController.text,
                                              webController.text);
                                          viewModel.updateContactData(
                                              index, newData);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ContactPage()));
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ShowMessage()));
                                        }
                                      },
                                      tooltip: 'Save',
                                      color: Colors.lightBlueAccent,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      );
    });
  }
}
