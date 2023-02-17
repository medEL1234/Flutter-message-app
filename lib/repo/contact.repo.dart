import 'dart:math';

import 'package:message_app_test/model/contact.dart';

class ContactRepo {
  //crete DBs
  Map<int, Contact> conatacts = {
    1: Contact(
        Id: 1, name: "ahmed", Profile: "AH", score: 44452, type: "student"),
    2: Contact(
        Id: 2, name: "samir", Profile: "SA", score: 452, type: "student"),
    3: Contact(
        Id: 3, name: "dahmad", Profile: "DA", score: 4442, type: "developer"),
    4: Contact(
        Id: 4, name: "yasmin", Profile: "YS", score: 442, type: "student"),
    5: Contact(
        Id: 5, name: "darifa", Profile: "DR", score: 42, type: "developer"),
  };
  //crete a method for celled all contact in dbs
  Future<List<Contact>> allContact() async {
    var future = await Future.delayed(Duration(seconds: 1));
    int run = new Random().nextInt(10);
    if (run > 3) {
      return conatacts.values.toList();
    } else {
      throw new Exception("Internet Error");
    }
  }

  Future<Iterable<Contact>> contactsByType(String type) async {
    var future = await Future.delayed(Duration(seconds: 1));
    int run = new Random().nextInt(10);
    if (run > 3) {
      return conatacts.values.toList().where((element) => element.type == type);
    } else {
      throw new Exception("Internet Error");
    }
  }
}
