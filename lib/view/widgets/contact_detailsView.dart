import 'package:contact_project/model/model.dart';
import 'package:contact_project/view/contact_page.dart';
import 'package:contact_project/view/home_page.dart';
import 'package:contact_project/view/widgets/alert.dart';
import 'package:contact_project/view_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_textfield_validation/flutter_textfield_validation.dart';




class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final TextEditingController nameController1 = TextEditingController();

  final TextEditingController nameController2 = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController mailController4 = TextEditingController();

  final TextEditingController webController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactViewModel>(builder: (context, viewModel, child) {
      return Center(
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
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(fontWeight: FontWeight.w200),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                  ),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.words,
                  controller: nameController1,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateName()
                      ? null
                      : "Please enter valid name!!",
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
                    hintStyle: TextStyle(fontWeight: FontWeight.w200),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                  ),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.words,
                  controller: nameController2,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateName()
                      ? null
                      : "Please enter valid name!!",
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
                    hintStyle: TextStyle(fontWeight: FontWeight.w200),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                  ),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  controller: phoneController,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validatePhone()
                      ? null
                      : "Please enter valid phone number!!",
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
                    hintStyle: TextStyle(fontWeight: FontWeight.w200),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                  ),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  controller: mailController4,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (input) => input!.validateEmail()
                      ? null
                      : "Please enter valid email!!",
                  onFieldSubmitted: (value) {
                    if (mailController4.text.isNotEmpty) {
                      mailController4.clear();
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
                    hintStyle: TextStyle(fontWeight: FontWeight.w200),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                  ),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  controller: webController5,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  onFieldSubmitted: (value) {
                    if (webController5.text.isNotEmpty) {
                      webController5.clear();
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
                                    builder: (context) => const HomePage()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ContactPage()));
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
                                  nameController2.text.isNotEmpty) &&
                              phoneController.text.isNotEmpty) {
                            ContactData newData = ContactData(
                                nameController1.text,
                                nameController2.text,
                                phoneController.text,
                                mailController4.text,
                                webController5.text);
                            viewModel.addContactData(newData);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ContactPage()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ShowMessage()));
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
      );
    });
  }
}
