import 'package:contact_project/model/model.dart';
import 'package:flutter/material.dart';

class ContactViewModel extends ChangeNotifier {
  List<ContactData> contactData = <ContactData>[];

  ContactData getContactData(int index) {
    return contactData[index];
  }

  //------------------------------------
  // add Contact_data to the contact list
  void addContactData(ContactData newData) {
    contactData.add(newData);
    notifyListeners();
  }

  //---------------------------------------
  //to update contact_data
  void updateContactData(int index, ContactData editData) {
    contactData[index].firstName = editData.firstName;
    contactData[index].lastName = editData.lastName;
    contactData[index].phoneNumber = editData.phoneNumber;
    contactData[index].email = editData.email;
    contactData[index].webSite = editData.webSite;
    notifyListeners();
  }

  //----------------------------------
  //get the length of contact list
  int getLength() {
    return contactData.length;
  }

  //----------------------------------
  //get the full name of the contact data
  String getFullName(int index) {
    return (contactData[index].firstName + ' ' + contactData[index].lastName);
  }

  //-------------------------------------
//get the first 2 character of the first name
  String getFirst2Char(int index) {
    return (contactData[index].firstName.substring(0, 2));
  }

//------------------------------------------
//get phone number of the contact data
  String getPhoneNumber(int index) {
    return (contactData[index].phoneNumber);
  }

//------------------------------------------
//clear contact list
  void deleteAllcontact() {
    contactData.clear();
    notifyListeners();
  }

  //-----------------------------------
//delete only one contact
  void deleteContact(int index) {
    contactData.removeAt(index);
    notifyListeners();
  }
  //-----------------------------

}
