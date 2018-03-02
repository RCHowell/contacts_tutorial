import 'package:flutter/material.dart';
import 'package:contacts_tutorial/models/contact.dart';
import 'package:contacts_tutorial/views/contacts/contact_card.dart';

class ContactsList extends StatelessWidget {

  final List<Contact> contacts;

  ContactsList(this.contacts);

  @override
  Widget build(BuildContext context) => new ListView(
    children: contacts.map((Contact c) => new ContactCard(c)).toList(),
  );

}