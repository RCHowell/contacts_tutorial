import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:contacts_tutorial/models/contact.dart';
import 'package:contacts_tutorial/repositories/contacts/contacts_repository.dart';

class HttpContactsRepository extends ContactsRepository {

  static const String BASE_URL = 'http://localhost:3000';

  @override
  Future<List<Contact>> get(int n) async {
    HttpClient client = new HttpClient();
    String url = '$BASE_URL/$n';
    try {
      HttpClientRequest req = await client.getUrl(Uri.parse(url));
      HttpClientResponse res = await req.close();
      if (res.statusCode == HttpStatus.OK) {
        String jsonString = await res.transform(UTF8.decoder).join();
        List<Map> rawList = JSON.decode(jsonString);
        return rawList.map((Map data) => new Contact.fromJSON(data)).toList();
      } else {
        print(res.statusCode);
      }
    } catch (exception) {
      print(exception.toString());
    }
    return new List();
  }

}