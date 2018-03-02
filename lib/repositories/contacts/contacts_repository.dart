import 'dart:async';
import 'package:contacts_tutorial/models/contact.dart';

abstract class ContactsRepository {
  Future<List<Contact>> get(int n);
}
