import 'package:contacts_tutorial/models/contact.dart';
import 'package:contacts_tutorial/views/contacts/contacts_list.dart';
import 'package:flutter/material.dart';
import 'package:contacts_tutorial/presenters/contacts_page_presenter.dart';

class ContactsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _ContactsPageState();

}

class _ContactsPageState extends State<ContactsPage> implements ContactsPageViewContract {

  ContactsPagePresenter _presenter;
  bool _loading;
  List<Contact> _contacts;

  @override
  initState() {
    super.initState();
    _loading = true;
    _presenter = new ContactsPagePresenter(this);
    _presenter.getContacts(20);
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: const Text('Contacts'),
    ),
    body: (_loading) ? new Center(
      child: new CircularProgressIndicator(),
    ) : new ContactsList(_contacts),
  );

  @override
  void onGetContactsComplete(List<Contact> contacts) {
    setState(() {
      _loading = false;
      _contacts = contacts;
    });
  }
  
}