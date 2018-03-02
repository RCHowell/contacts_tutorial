import 'dart:math';

import 'package:flutter/material.dart';
// Model
import 'package:contacts_tutorial/models/contact.dart';

class ContactCard extends StatelessWidget {

  final Contact contact;

  ContactCard(this.contact);

  Color _randomColor() {
    Random random = new Random();
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.pink,
    ];
    return colors[random.nextInt(colors.length - 1)];
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new ExpansionTile(
        leading: new CircleAvatar(
          // child: new Text(contact.firstName[0].toUpperCase()),
          backgroundImage: new NetworkImage(contact.image),
          backgroundColor: _randomColor(),
        ),
        title: new Text('${contact.firstName} ${contact.lastName}'),
        // subtitle: new Text('${this.contact.phone}'),
        children: <Widget>[
          new ListTile(
            dense: true,
            leading: const Icon(Icons.phone),
            title: new Text('Cell: ${contact.cell}'),
            subtitle: new Text('Home: ${contact.phone}'),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new Text(contact.email),
          ),
          new ListTile(
            dense: true,
            leading: const Icon(Icons.home),
            title: new Text(contact.addressStreet),
            subtitle: new Text('${contact.addressCity}, ${contact.addressState} ${contact.addressZip}'),
          )
        ],
      ),
    );
  }

}