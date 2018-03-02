import 'package:flutter/material.dart';
import 'package:contacts_tutorial/views/contacts/contacts_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Contacts MVP Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new ContactsPage(),
    );
  }
}
