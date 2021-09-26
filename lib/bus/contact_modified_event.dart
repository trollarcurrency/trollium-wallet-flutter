import 'package:event_taxi/event_taxi.dart';
import 'package:trollium_wallet_flutter/model/db/contact.dart';

class ContactModifiedEvent implements Event {
  final Contact contact;

  ContactModifiedEvent({this.contact});
}