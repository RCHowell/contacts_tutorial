class Contact {

  final String title;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String cell;
  final String addressCity;
  final String addressState;
  final String addressStreet;
  final String addressZip;
  final String image;

  Contact({
    this.title,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.cell,
    this.addressCity,
    this.addressState,
    this.addressStreet,
    this.addressZip,
    this.image,
  });

  Contact.fromJSON(Map<String, dynamic> data) :
    title = data['name']['title'],
    firstName = data['name']['first'],
    lastName = data['name']['last'],
    email = data['email'],
    phone = data['phone'],
    cell = data['cell'],
    addressCity = data['location']['city'],
    addressState = data['location']['state'],
    addressStreet = data['location']['street'],
    addressZip = data['location']['postcode'].toString(),
    image = data['picture']['thumbnail'];

}