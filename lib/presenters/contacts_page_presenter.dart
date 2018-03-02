import 'package:contacts_tutorial/models/contact.dart';
import 'package:contacts_tutorial/repositories/contacts/contacts_repository.dart';
import 'package:contacts_tutorial/repositories/contacts/http_contacts_repository.dart';

abstract class ContactsPageViewContract {
  void onGetContactsComplete(List<Contact> contacts);
}

class ContactsPagePresenter {

  ContactsPageViewContract _view;
  ContactsRepository _repository;

  ContactsPagePresenter(this._view) {
    _repository = new HttpContactsRepository();
  }

  getContacts(int n) {
    _repository.get(n).then(_view.onGetContactsComplete);
  }


}