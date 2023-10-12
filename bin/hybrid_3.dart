/*
* Taylor Ramirez-Rodriguez
* Hybrid App 3
* 2023-October-12
*
*/

import 'package:hybrid_3/Students.dart';
import 'dart:convert';

void main() {
  String json = '''
  [
    {"first_name":"Taylor", "last_name":"Ramirez-Rodriguez", "email":"rami0101@algonquinlive.com"},
    {"first_name":"Zasha", "last_name":"Lemon", "email":"lemon@party.com"},
    {"first_name":"Cooper", "last_name":"Estevez", "email":"cooper.dooper@mailmailandmoremail.com"},
    {"first_name":"Madonna", "email":"madonna@intothegroove.com"},
    {"first_name":"Adele", "email":"whoneeds@alastname.co.uk"},
    {"first_name":"Andrew", "last_name":"Oliander", "email":"andyo@notafakeemail.com"},
    {"first_name":"Sarah", "last_name":"Connor", "email":"hasta@lavista.com"}
  ]
  ''';

  List<Map<String, String>> people = List<Map<String, String>>.from(
      jsonDecode(json).map((e) => Map<String, String>.from(e)));

  Students students = Students(people);

  print('\nOriginal Json:\n');
  students.output();

  students.sort('first');
  print('\nSort using First Name:\n');
  students.output();

  Map<String, String> newPerson = {
    "first_name": "John",
    "last_name": "Doe",
    "email": "johndoe@doejohn.com"
  };
  students.plus(newPerson);
  print('\nAdded a new Student:\n');
  students.output();

  students.remove('last_name');
  print('\nRemove all Students with a Last Name:\n');
  students.output();

  print("\nBy Tay!\n\t");
}
